//
//  LoginVC.swift
//  RNDM
//
//  Created by gdm on 12/26/18.
//  Copyright © 2018 gdm. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    
    //Outlets
    
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var createUserButton: UIButton!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.layer.cornerRadius = 10
        createUserButton.layer.cornerRadius = 10

    }
 
    @IBAction func loginButtonTapped(_ sender: Any) {
    }
    
    @IBAction func createUserTapped(_ sender: Any) {
    }
}
