//
//  SettingsViewController.swift
//  Detroit 909
//
//  Created by Matt Dolan External macOS on 2021-02-12.
//  Copyright © 2021 Matt Dolan External macOS. All rights reserved.
//

import UIKit
import MessageUI

class SettingsViewController: UIViewController, Storyboarded {
    weak var coordinator: MainCoordinator?

    @IBOutlet weak var tableView: UITableView!
    
    let settingsBrain = SettingsBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationUI()
        
        tableView.register(SettingsTableViewCell.nib(), forCellReuseIdentifier: SettingsTableViewCell.identifier)
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = .black
        tableView.tableFooterView = UIView()
    }
    
    func navigationUI() {
        // Set Title UI
        navigationItem.title = "Settings"
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont(name: "AvenirNext-DemiBold", size: 16)!]
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        navigationController?.navigationBar.barTintColor = UIColor.gray
        
        // Set BarButtonItem UI
        navigationController?.navigationBar.topItem?.title = "Detroit 909"
        UIBarButtonItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font: UIFont(name: "AvenirNext-Medium", size: 16)!], for: .normal)
        navigationController?.navigationBar.tintColor = UIColor.white
    }
}

//MARK: - MFMailComposeViewControllerDelegate

extension SettingsViewController: MFMailComposeViewControllerDelegate {
    
    func sendEmail() {
        if MFMailComposeViewController.canSendMail() {
            let mail = MFMailComposeViewController()
            mail.mailComposeDelegate = self
            mail.setToRecipients(["matt@mdolancode.com"])
            mail.setMessageBody("<p>You're soooo awesome!</p>", isHTML: true)
            
            present(mail, animated: true)
        } else {
            print("Email cannot send")
        }
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
    }
    
}

//MARK:- UITableViewDelegate

extension SettingsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let tableViewChoice = settingsBrain.dataArray[indexPath.row]
        tableView.deselectRow(at: indexPath, animated: true)
        
        if tableViewChoice == "FAQ" {
            coordinator?.faq()
        } else if tableViewChoice == "Shout-Outs" {
            coordinator?.shoutOuts()
        } else if tableViewChoice == "Contact Us" {
            sendEmail()
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
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: SettingsTableViewCell.identifier, for: indexPath) as! SettingsTableViewCell
            // Set Cell UI
            cell.cellLabel.text = settingsBrain.dataArray[indexPath.row]
            cell.cellLabel.textColor = .white
            cell.cellButton.tintColor = .white
            cell.backgroundColor = .black
            return cell
    }
}
