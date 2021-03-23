//
//  SettingsViewController.swift
//  Detroit 909
//
//  Created by Matt Dolan External macOS on 2021-02-12.
//  Copyright © 2021 Matt Dolan External macOS. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController, Storyboarded {
    weak var coordinator: MainCoordinator?

    @IBOutlet weak var tableView: UITableView!
    
    let settingsBrain = SettingsBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "SettingsTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "SettingsTableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = .black
    }

    @IBAction func backButtonPressed(_ sender: UIBarButtonItem) {
        coordinator?.goBack()
    }
}

//MARK:- UITableViewDelegate

extension SettingsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let tableViewChoice = settingsBrain.dataArray[indexPath.row]
        tableView.deselectRow(at: indexPath, animated: true)
        
        if tableViewChoice == "FAQ" {
            coordinator?.faq()
        } else if tableViewChoice == "Contact Us" {
            coordinator?.contact()
        } else {
            coordinator?.acknowledgement()
        }
    }
}

//MARK:- UITableViewDataSource

extension SettingsViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settingsBrain.dataArray.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingsTableViewCell", for: indexPath) as! SettingsTableViewCell
        
        // Set Cell UI
        cell.cellLabel.text = settingsBrain.dataArray[indexPath.row]
        cell.cellLabel.textColor = .white
        cell.cellButton.tintColor = .white
        cell.backgroundColor = .black
        return cell
    }
}
