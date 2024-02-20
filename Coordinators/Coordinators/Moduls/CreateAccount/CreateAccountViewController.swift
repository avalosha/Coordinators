//
//  CreateAccountViewController.swift
//  Coordinators
//
//  Created by Sferea-Lider on 14/02/24.
//

import UIKit

class CreateAccountViewController: UIViewController, Storyboarded {
    
    weak var coordinator: MainCoordinator?
    var selectedProduct = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Create Account \(selectedProduct)"
    }
    
    deinit {
        print("deinit CreateAccountVC")
    }

}
