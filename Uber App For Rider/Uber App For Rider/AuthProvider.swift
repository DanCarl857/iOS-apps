//
//  AuthProvider.swift
//  Uber App For Rider
//
//  Created by Daniel Carlson on 6/4/17.
//  Copyright © 2017 Daniel Carlson. All rights reserved.
//

import Foundation
import FirebaseAuth

typealias LoginHandler = (_ msg: String) -> Void;

class AuthProvider {
    
    private static let _instance = AuthProvider();
    
    static var Instance: AuthProvider {
        return _instance;
    }
    
    func login(withEmail: String, password: String, LoginHandler: LoginHandler?){
        
        Auth.auth().signIn(withEmail: withEmail, password: password, completion: {
            (user, error) in
            
            if error != nil {
                
            }
        })
    } // login func
    
} // class

