//
//  AcknowledgementsViewController.swift
//  Detroit 909
//
//  Created by Matt Dolan External macOS on 2021-02-28.
//  Copyright © 2021 Matt Dolan External macOS. All rights reserved.
//

import UIKit

class AcknowledgementsViewController: UIViewController, Storyboarded {
    weak var coordinator: MainCoordinator?
    
    @IBOutlet weak var tableView: UITableView!
    
    let acknowledgementsBrain = AcknowledgementsBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationUI()
        
        let nib = UINib(nibName: "AcknowledgementsTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "AcknowledgementsTableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = .black
    }
    
    func navigationUI() {
        // Set Title UI
        navigationItem.title = "Acknowledgements"
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont(name: "AvenirNext-DemiBold", size: 14)!]
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        navigationController?.navigationBar.barTintColor = UIColor.gray
        
        // Set BarButtonItem UI
        UIBarButtonItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font: UIFont(name: "AvenirNext-Medium", size: 15)!], for: .normal)
        navigationController?.navigationBar.tintColor = UIColor.white
    }
    
    @IBAction func backBarButton(_ sender: UIBarButtonItem) {
        coordinator?.goBack()
    }
}

//MARK: - UITableViewDelegate

extension AcknowledgementsViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
    }
}

//MARK: - UITableViewDataSource

extension AcknowledgementsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return acknowledgementsBrain.acknowledgementsArray.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AcknowledgementsTableViewCell", for: indexPath) as! AcknowledgementsTableViewCell
        
        cell.whatIsAcknowledgedLabel.text = acknowledgementsBrain.acknowledgementsArray[indexPath.row].whatIsAcknowledged
        cell.acknowledgementLabel.text = acknowledgementsBrain.acknowledgementsArray[indexPath.row].acknowledgement
        cell.assetImageView.image = acknowledgementsBrain.acknowledgementsArray[indexPath.row].image
        //        cell.linkButton.text = acknowledgementsBrain.acknowledgementsArray[indexPath.row]
        cell.whatIsAcknowledgedLabel.textColor = .white
        cell.acknowledgementLabel.textColor = .white
        cell.backgroundColor = .black
        
        return cell
    }
}
