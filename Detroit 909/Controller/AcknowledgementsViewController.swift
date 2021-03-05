//
//  AcknowledgementsViewController.swift
//  Detroit 909
//
//  Created by Matt Dolan External macOS on 2021-02-28.
//  Copyright © 2021 Matt Dolan External macOS. All rights reserved.
//

import UIKit

class AcknowledgementsViewController: UIViewController {
    
    @IBOutlet weak var backBarButtonItem: UIBarButtonItem!
    @IBOutlet weak var tableView: UITableView!
    
    let acknowledgementsBrain = AcknowledgementsBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backBarButtonItem.tintColor = .white
        
        let nib = UINib(nibName: "AcknowledgementsTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "AcknowledgementsTableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = .black
    }
    
    @IBAction func backBarButton(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
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
