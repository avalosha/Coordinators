//
//  MainTabBarController.swift
//  Coordinators
//
//  Created by Sferea-Lider on 14/02/24.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    let main = MainCoordinator(navigationController: UINavigationController())
    let secondary = SecondaryCoordinator(navigationController: UINavigationController())

    override func viewDidLoad() {
        super.viewDidLoad()

        main.start()
        secondary.start()
        viewControllers = [main.navigationController, secondary.navigationController]
    }

}
