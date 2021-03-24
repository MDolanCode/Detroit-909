//
//  ShoutOutsViewController.swift
//  Detroit 909
//
//  Created by Matt Dolan External macOS on 2021-02-28.
//  Copyright © 2021 Matt Dolan External macOS. All rights reserved.
//

import UIKit

class ShoutOutsViewController: UIViewController, Storyboarded {
    weak var coordinator: MainCoordinator?
    
    @IBOutlet weak var tableView: UITableView!
    
    let shoutOutsBrain = ShoutOutsBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationUI()
        
        let nib = UINib(nibName: "ShoutOutsTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "ShoutOutsTableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = .black
    }
    
    func navigationUI() {
        // Set Title UI
        navigationItem.title = "ShoutOuts"
    }
}

//MARK: - UITableViewDelegate

extension ShoutOutsViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
    }
}

//MARK: - UITableViewDataSource

extension ShoutOutsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shoutOutsBrain.ShoutoutsArray.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ShoutOutsTableViewCell", for: indexPath) as! ShoutOutsTableViewCell
        
        cell.whoLabel.text = shoutOutsBrain.ShoutoutsArray[indexPath.row].who
        cell.whatLabel.text = shoutOutsBrain.ShoutoutsArray[indexPath.row].what
        cell.assetImageView.image = shoutOutsBrain.ShoutoutsArray[indexPath.row].image
        //        cell.linkButton.text = shoutOutsBrain.ShoutoutsArray[indexPath.row]
        cell.whoLabel.textColor = .white
        cell.whatLabel.textColor = .white
        cell.backgroundColor = .black
        
        return cell
    }
}
