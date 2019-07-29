//
//  LandingViewController.swift
//  SmartHome
//
//  Created by Asif on 2019-07-16.
//  Copyright © 2019 Asif. All rights reserved.
//

import UIKit

class LandingViewController: UIViewController {

    @IBOutlet weak var signupButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var demoButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        signupButton.layer.cornerRadius = 28.0
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    // MARK: - IBActions
    
    @IBAction func signupButtonPressed(_ sender: Any) {
        
        
    }
    
    @IBAction func loginButtonPressed(_ sender: Any) {
    }
    
    @IBAction func demoButtonPressed(_ sender: Any) {
    }
    
}
