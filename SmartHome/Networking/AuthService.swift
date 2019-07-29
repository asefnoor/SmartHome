//
//  AuthService.swift
//  SmartHome
//
//  Created by Asif on 2019-07-29.
//  Copyright © 2019 Asif. All rights reserved.
//

import Foundation

import Alamofire

class AuthService {
    
    static let instance = AuthService()
    
    let userDefaults = UserDefaults.standard
    
    var isLoggedIn: Bool {
        get {
            return userDefaults.bool(forKey: LOGGED_IN_KEY)
        }
        
        set {
            userDefaults.set(newValue, forKey: LOGGED_IN_KEY)
        }
    }
    
    var authToken: String {
        get {
            return userDefaults.value(forKey: TOKEN_KEY) as! String
        }
        set {
            userDefaults.set(newValue, forKey: TOKEN_KEY)
        }
    }
    
    var userEmail: String {
        get {
            return userDefaults.value(forKey: USER_EMAIL) as! String
        }
        set {
            userDefaults.set(newValue, forKey: USER_EMAIL)
        }
    }
    
    func registerUser(email: String, password: String, completion:@escaping CompletionHandler) {
        let lowerCaseEmail = email.lowercased()
        
        let header = [
            "Content-Type": "application/json; charset=utf8"
        ]
        
        let body: [String: Any] = [
        "email": lowerCaseEmail,
        "password": password
        ]
        
        Alamofire.request(URL_REGISTER, method: .get, parameters: body, encoding: JSONEncoding.default, headers: header).responseJSON
            { (response) in
                
                if response.result.error == nil {
                    completion(true)
                } else {
                     completion(false)
                    debugPrint(response.result.error as Any)
                }
            }
        
    }

    
    
}
