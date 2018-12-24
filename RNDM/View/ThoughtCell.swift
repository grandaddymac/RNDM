//
//  ThoughtCell.swift
//  RNDM
//
//  Created by gdm on 12/22/18.
//  Copyright © 2018 gdm. All rights reserved.
//

import UIKit

class ThoughtCell: UITableViewCell {

    //Outlets
    @IBOutlet weak var usernameLbl: UILabel!
    @IBOutlet weak var timestampLbl: UILabel!
    @IBOutlet weak var thoughtTxtLbl: UILabel!
    @IBOutlet weak var likesImage: UIImageView!
    @IBOutlet weak var likesNumLbl: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func configureCell(thought: Thought) {
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
