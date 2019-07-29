//
//  Constants.swift
//  SmartHome
//
//  Created by Asif on 2019-07-16.
//  Copyright © 2019 Asif. All rights reserved.
//

import Foundation


typealias CompletionHandler =  (_ Success:Bool) -> ()

// URL Constants
let BASE_URL = "https://reqres.in/api/"
let URL_REGISTER = "\(BASE_URL)users/100"




//Segues
let TO_LOGIN = "toLogin"




// User Defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"
