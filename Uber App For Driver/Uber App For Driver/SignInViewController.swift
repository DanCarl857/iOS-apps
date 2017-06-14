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
            
            AuthProvider.Instance.login(withEmail: emailTextField.text!, password: passwordTextField.text!, loginHandler: {
                (message) in
                
                if message != nil {
                    self.AlertTheUser(title: "Problem with Authentication", message: message!);
                } else {
                    print("LOGIN COMPLETE")
                }
            })
        }
    }


    @IBAction func SignUp(_ sender: Any) {
    }
    
    private func AlertTheUser(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default, handler: nil);
        alert.addAction(ok);
        present(alert, animated: true, completion: nil);
    }

}
