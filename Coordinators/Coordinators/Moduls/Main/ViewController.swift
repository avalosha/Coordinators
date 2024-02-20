//
//  ViewController.swift
//  Coordinators
//
//  Created by Sferea-Lider on 14/02/24.
//

import UIKit

class ViewController: UIViewController, Storyboarded {
    
    @IBOutlet weak var product: UISegmentedControl!
    @IBOutlet weak var tableView: UITableView!
    
    weak var coordinator: MainCoordinator?
    
    var pictures = [String]()
    var pictureSelectAction: ((String) -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let items = ["kof","street_fighter","xmen_capcom"]
        pictures.append(contentsOf: items)
        
        tableView.delegate = self
        tableView.dataSource = self
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
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ExampleCell", for: indexPath) as? ExampleCell else { fatalError("xib doesn't exist") }
        
        cell.titleLbl.text = pictures[indexPath.row]
        cell.accessoryType = .disclosureIndicator
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let item = pictures[indexPath.row]
//        coordinator?.showDetail(with: item)
        pictureSelectAction?(pictures[indexPath.row])
    }
    
}
