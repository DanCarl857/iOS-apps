//
//  AuthProvider.swift
//  Uber App For Driver
//
//  Created by Daniel Carlson on 6/4/17.
//  Copyright © 2017 Daniel Carlson. All rights reserved.
//

import Foundation
import FirebaseAuth

typealias LoginHandler = (_ msg: String?) -> Void;

struct LoginErrorCode {
    static let INVALID_EMAIL = "Invalid email. Please enter correct email address"
    static let WRONG_PASSWORD = "Wrong password. Please enter correct password."
    static let USER_NOT_FOUND = "User not found. Please register"
    static let PROBLEM_CONNECTING = "There was an error connecting to the database. Please try again"
    static let EMAIL_ALREADY_IN_USE = "Email already in use. Please use another"
    static let WEAK_PASSWORD = "Password should be atleast 6 characters long"
} // struct

class AuthProvider {
    private static let _instance = AuthProvider();
    
    static var Instance: AuthProvider {
        return _instance;
    }
    
    func login(withEmail: String, password: String, loginHandler: LoginHandler?){
        
        Auth.auth().signIn(withEmail: withEmail, password: password, completion: {
            (user, error) in
            
            if error != nil {
                self.handleErrors(err: error as! NSError, loginHandler: loginHandler)
            } else {
                loginHandler?(nil);
            }
        })
    } // login func
    
    private func handleErrors(err: NSError, loginHandler: LoginHandler?){
        
        if let errCode = AuthErrorCode(rawValue: err.code) {
            
            switch errCode {
            case .emailAlreadyInUse:
                loginHandler?(LoginErrorCode.EMAIL_ALREADY_IN_USE)
                break;
                
            case .invalidEmail:
                loginHandler?(LoginErrorCode.INVALID_EMAIL)
                break;
                
            case .userNotFound:
                loginHandler?(LoginErrorCode.USER_NOT_FOUND)
                break;
                
            case .wrongPassword:
                loginHandler?(LoginErrorCode.WRONG_PASSWORD)
                break;
                
            case .weakPassword:
                loginHandler?(LoginErrorCode.WEAK_PASSWORD)
                break;
                
            default:
                loginHandler?(LoginErrorCode.PROBLEM_CONNECTING)
                break;
            }
        }
    
    } // handleErrors func
    
} // class
