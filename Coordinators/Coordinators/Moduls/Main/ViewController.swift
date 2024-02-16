//
//  ViewController.swift
//  Coordinators
//
//  Created by Sferea-Lider on 14/02/24.
//

import UIKit

class ViewController: UIViewController, Storyboarded {
    
    @IBOutlet weak var product: UISegmentedControl!
    
    weak var coordinator: MainCoordinator?
    
    var tableView = UITableView()
    var pictures = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let items = ["nssl01","nssl01","nssl01","nssl01","nssl01","nssl01","nssl01","nssl01","nssl01","nssl01"]
        for item in items {
            if item.hasPrefix("nssl") {
                pictures.append(item)
            }
        }
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        tableView.reloadData()
        
        navigationController?.navigationBar.prefersLargeTitles = true
        
        title = "Main"
    }

    @IBAction func buyTapped(_ sender: Any) {
        coordinator?.buySubscription()
    }
    
    @IBAction func createAccountTapped(_ sender: Any) {
        coordinator?.createAccount(to: product.selectedSegmentIndex)
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = pictures[indexPath.row]
        cell.accessoryType = .disclosureIndicator
        
        return cell
    }
    
}
