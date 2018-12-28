//
//  CommentCell.swift
//  RNDM
//
//  Created by gdm on 12/27/18.
//  Copyright © 2018 gdm. All rights reserved.
//

import UIKit

class CommentCell: UITableViewCell {

    
    //Outlets
    @IBOutlet weak var usernameText: UILabel!
    @IBOutlet weak var timestampText: UILabel!
    @IBOutlet weak var commentText: UILabel!
    

    func configureCell(comment: Comment) {
        usernameText.text = comment.username
        commentText.text = comment.commentTxt
        
        let formatter = DateFormatter()
        formatter.dateFormat = "MMM d, hh:mm"
        let timestamp = formatter.string(from: comment.timestamp)
        timestampText.text = timestamp
    }
   

}
