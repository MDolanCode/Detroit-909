//
//  ContactViewController.swift
//  Detroit 909
//
//  Created by Matt Dolan External macOS on 2021-03-04.
//  Copyright © 2021 Matt Dolan External macOS. All rights reserved.
//

import UIKit
import MessageUI

class ContactViewController: UIViewController, MFMailComposeViewControllerDelegate {
    
    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var backBarButtonItem: UIBarButtonItem!
    @IBOutlet weak var contactLabel: UILabel!
    @IBOutlet weak var contactButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backBarButtonItem.tintColor = .white
        backgroundView.backgroundColor = .black
        
        buttonUI()
        
        contactLabel.text = "Please feel free to contact me with any issues you may be experiencing with the app, any suggestions or features you would like to see, or positive or negative feedback. Also, reaching out to say hi, is even ok too! I will get back to you as soon as I can! Thank you so much!"
        
        
    }
    
    func buttonUI() {
        contactButton.setTitle("Open Mail", for: .normal)
        contactButton.tintColor = .black
        
    }
    
    @IBAction func backBarButton(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func contactButtonPressed(_ sender: UIButton) {
        sendEmail()
    }
    
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
