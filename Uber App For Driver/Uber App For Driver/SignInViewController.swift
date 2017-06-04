//
//  SignInViewController.swift
//  Uber App For Driver
//
//  Created by Daniel Carlson on 6/4/17.
//  Copyright © 2017 Daniel Carlson. All rights reserved.
//

import UIKit
import FirebaseAuth

class SignInViewController: UIViewController {
    
    private let DRIVER_SEGUE = "DriverVC"

    @IBOutlet weak var emailTextField: UITextField!
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func LogIn(_ sender: Any) {
        
        if emailTextField.text! != "" && passwordTextField.text! != "" {
            Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!, completion: {
                (user, error) in
                
                if error != nil {
                    
                    Auth.auth().createUser(withEmail: self.emailTextField.text!, password: self.passwordTextField.text!, completion: {
                        (user, error1) in
                        
                        if error1 != nil {
                            if user?.uid != nil {
                                
                            } else {
                                
                            }
                        }
                    })
                } else {
                    
                    
                }
            })
        }
    }


    @IBAction func SignUp(_ sender: Any) {
    }

}
