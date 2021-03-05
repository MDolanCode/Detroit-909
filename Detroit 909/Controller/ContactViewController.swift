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

    @IBOutlet weak var contactLabel: UILabel!
    @IBOutlet weak var contactButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
