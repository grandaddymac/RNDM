//
//  CommentsVC.swift
//  RNDM
//
//  Created by gdm on 12/27/18.
//  Copyright © 2018 gdm. All rights reserved.
//

import UIKit

class CommentsVC: UIViewController {
    
    //Outlets
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var addCommentText: UITextField!
    @IBOutlet weak var keyboardView: UIView!
    
    //Variables
    var thought: Thought!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func addCommentTapped(_ sender: Any) {
    }
    
}
