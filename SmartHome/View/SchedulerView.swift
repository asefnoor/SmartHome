//
//  SchedulerView.swift
//  SmartHome
//
//  Created by Asif on 2019-07-09.
//  Copyright © 2019 Asif. All rights reserved.
//

import UIKit

class SchedulerView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    @IBAction func cancelButtonPressed(_ sender: Any) {
        removeFromSuperview()
        print("Cancel Button Pressed")
    }
    
    @IBAction func doneButtonPressed(_ sender: Any) {
        
        removeFromSuperview()
        print("Done Button Pressed")
    }
    
  
    
    
    
   

    
    
    

}

