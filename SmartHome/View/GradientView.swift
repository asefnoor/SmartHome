//
//  GradientView.swift
//  SmartHome
//
//  Created by Asif on 2019-07-15.
//  Copyright © 2019 Asif. All rights reserved.
//

import UIKit

@IBDesignable
class GradientView: UIView {

    //Create a value that can be changeable from storyboard
    
    @IBInspectable  var topColor: UIColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0) {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    @IBInspectable  var bottomColor: UIColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0) {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    override func layoutSubviews() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0,y: 0)
        gradientLayer.endPoint = CGPoint(x: 1,y: 1)
        gradientLayer.frame = bounds
        self.layer.insertSublayer(gradientLayer, at: 0)
        
    }
   

}
