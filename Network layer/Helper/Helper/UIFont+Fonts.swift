//
//  UIFont_Fonts.swift
//  Network layer
//
//  Created by YADU MADHAVAN on 13/06/21.
//

import Foundation
import UIKit

enum CustomFont:String {
    
    case robotLight = "Roboto-Light"
    case robotoRegular = "Roboto-Regular"
    case robotoMedium = "Roboto-Medium"
    case robotoBold = "Roboto-Bold"
    
}

extension UIFont {
    
    class func robotoLight(_ size: CGFloat) -> UIFont {
        return UIFont(name: CustomFont.robotLight.rawValue, size: size)!
    }
    
    class func robotoRegualar(_ size: CGFloat) -> UIFont {
        return UIFont(name: CustomFont.robotoRegular.rawValue, size: size)!
    }
    
    class func robotoMedium(_ size: CGFloat) -> UIFont {
        return UIFont(name: CustomFont.robotoMedium.rawValue, size: size)!
    }
    
    class func robotoBold(_ size: CGFloat) -> UIFont {
        return UIFont(name: CustomFont.robotoBold.rawValue, size: size)!
    }
}
