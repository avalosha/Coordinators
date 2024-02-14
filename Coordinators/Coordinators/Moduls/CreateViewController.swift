//
//  CreateViewController.swift
//  Coordinators
//
//  Created by Sferea-Lider on 14/02/24.
//

import UIKit

class CreateViewController: UIViewController, Storyboarded {

    weak var coordinator: MainCoordinator?
    var selectedProduct = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("SelectedProduct: ",selectedProduct)
    }
    
    deinit {
        print("deinit CreateVC")
    }

}
