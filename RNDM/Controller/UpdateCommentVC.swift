//
//  UpdateCommentVC.swift
//  RNDM
//
//  Created by gdm on 12/29/18.
//  Copyright © 2018 gdm. All rights reserved.
//

import UIKit
import Firebase

class UpdateCommentVC: UIViewController {

    
    //Outlets
    @IBOutlet weak var commentText: UITextView!
    @IBOutlet weak var updateButton: UIButton!
    
    //Variables
    var commentData: (comment: Comment, thought: Thought)!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        commentText.layer.cornerRadius = 10
        updateButton.layer.cornerRadius = 10
        commentText.text = commentData.comment.commentTxt

    }
    

    @IBAction func updateTapped(_ sender: Any) {
        Firestore.firestore().collection(THOUGHTS_REF).document(commentData.thought.documentId).collection(COMMENTS_REF).document(commentData.comment.documentId).updateData([COMMENT_TEXT : commentText.text]) { (error) in
            if let error = error {
                debugPrint("Unable to update comment: \(error.localizedDescription)")
            } else {
                self.navigationController?.popViewController(animated: true)
            }
        }
    }
    
}
