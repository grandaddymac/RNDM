//
//  LoginVC.swift
//  RNDM
//
//  Created by gdm on 12/26/18.
//  Copyright © 2018 gdm. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

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
        guard let email = emailText.text,
            let password = passwordText.text else { return }
        
        Auth.auth().signIn(withEmail: email, password: password) { (user, error) in
            if let error = error {
                debugPrint("Error signing in: \(error)")
            } else {
                self.dismiss(animated: true, completion: nil)
            }
        }
    }
    
   
}
