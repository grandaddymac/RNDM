//
//  ThoughtCell.swift
//  RNDM
//
//  Created by gdm on 12/22/18.
//  Copyright © 2018 gdm. All rights reserved.
//

import UIKit
import Firebase

class ThoughtCell: UITableViewCell {

    //Outlets
    @IBOutlet weak var usernameLbl: UILabel!
    @IBOutlet weak var timestampLbl: UILabel!
    @IBOutlet weak var thoughtTxtLbl: UILabel!
    @IBOutlet weak var likesImage: UIImageView!
    @IBOutlet weak var likesNumLbl: UILabel!
    
    //Variables
    
    private var thought: Thought!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(likeTapped))
        likesImage.addGestureRecognizer(tap)
        likesImage.isUserInteractionEnabled = true
        
    }
    
    @objc func likeTapped() {

        Firestore.firestore().document("thoughts/\(thought.documentId!)")
            .updateData([NUM_LIKES : thought.numLikes + 1])
    }
    
    func configureCell(thought: Thought) {
        self.thought = thought
        usernameLbl.text = thought.username
        //timestampLbl.text = thought.timestamp
        thoughtTxtLbl.text = thought.thoughtTxt
        likesNumLbl.text = String(thought.numLikes)
        
        let formatter = DateFormatter()
        formatter.dateFormat = "MMM d, hh:mm"
        let timestamp = formatter.string(from: thought.timestamp)
        timestampLbl.text = timestamp
    }

   

}
