//
//  AcknowledgementsTableViewCell.swift
//  Detroit 909
//
//  Created by Matt Dolan External macOS on 2021-02-28.
//  Copyright © 2021 Matt Dolan External macOS. All rights reserved.
//

import UIKit

class AcknowledgementsTableViewCell: UITableViewCell {

    @IBOutlet weak var whatIsAcknowledgedLabel: UILabel!
    @IBOutlet weak var acknowledgementLabel: UILabel!
    @IBOutlet weak var assetImageView: UIImageView!
    @IBOutlet weak var linkButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func linkButtonPressed(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://mdolancode.com")!, options: [:], completionHandler: nil)
    }
}
