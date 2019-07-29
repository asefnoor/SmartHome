//
//  Fonts.swift
//  SmartHome
//
//  Created by Asif on 2019-07-08.
//  Copyright © 2019 Asif. All rights reserved.
//

import Foundation
import UIKit

extension UIFont {
    class func appRegularFontWith ( size:CGFloat ) -> UIFont {
        return  UIFont(name: "SK-Modernist-Regular", size: size)!
    }
    class func appLighFontWith ( size:CGFloat ) -> UIFont {
        return  UIFont(name: "SK-Modernist-Light", size: size)!
    }
    
    class func appHeavyFontWith ( size:CGFloat ) -> UIFont {
        return  UIFont(name: "SK-Modernist-Bold", size: size)!
    }
    
}
