//
//  Storyboarded.swift
//  Coordinators
//
//  Created by Sferea-Lider on 14/02/24.
//

import Foundation
import UIKit

enum Storyboards: String {
    case main = "Main"
    case secondary = "Secondary"
    case buy = "Buy"
    case account = "Account"
    case detail = "Detail"
}

protocol Storyboarded {
    static func instantiate(_ sb: Storyboards) -> Self
}

extension Storyboarded where Self: UIViewController {
    static func instantiate(_ sb: Storyboards) -> Self {
        let id = String(describing: self)
        let storyboard = UIStoryboard(name: sb.rawValue, bundle: Bundle.main)
        
        return storyboard.instantiateViewController(withIdentifier: id) as! Self
    }
}
