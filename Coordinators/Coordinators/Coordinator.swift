//
//  Coordinator.swift
//  Coordinators
//
//  Created by Sferea-Lider on 14/02/24.
//

import Foundation
import UIKit

protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}
