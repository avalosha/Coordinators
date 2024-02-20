//
//  DetailViewController.swift
//  Coordinators
//
//  Created by Sferea-Lider on 20/02/24.
//

import UIKit

class DetailViewController: UIViewController, Storyboarded {

    @IBOutlet weak var detailImg: UIImageView!
    
    weak var coordinator: MainCoordinator?
    var selectedImage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let imageToLoad = selectedImage {
            detailImg?.image = UIImage(named: imageToLoad)
        }
        
        title = "Detail"
    }
    
    deinit {
        print("deinit DetailVC")
    }

}
