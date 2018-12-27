//
//  CreateUserVC.swift
//  RNDM
//
//  Created by gdm on 12/26/18.
//  Copyright © 2018 gdm. All rights reserved.
//

import UIKit

class CreateUserVC: UIViewController {

    
    //Outlets
    
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var createButton: UIButton!
    @IBOutlet weak var cancelButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createButton.layer.cornerRadius = 10
        cancelButton.layer.cornerRadius = 10
        
       
    }
    
    @IBAction func createTapped(_ sender: Any) {
    }
    @IBAction func cancelTapped(_ sender: Any) {
    }
    

}
