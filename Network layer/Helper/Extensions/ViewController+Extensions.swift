//
//  ViewController+Extensions.swift
//  Network layer
//
//  Created by YADU MADHAVAN on 13/06/21.
//

import Foundation
import UIKit

extension UIViewController {
    
    class func instantiate<T: UIViewController>(storyboard: StoryBoardKeys) -> T {
        
        let storyboard = UIStoryboard(name: storyboard.rawValue, bundle: nil)
        let identifier = String(describing: self)
        return storyboard.instantiateViewController(withIdentifier: identifier) as! T
    }
}
