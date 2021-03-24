//
//  ShoutOutsTableViewCell.swift
//  Detroit 909
//
//  Created by Matt Dolan External macOS on 2021-02-28.
//  Copyright © 2021 Matt Dolan External macOS. All rights reserved.
//

import UIKit

class ShoutOutsTableViewCell: UITableViewCell {

    @IBOutlet weak var whoLabel: UILabel!
    @IBOutlet weak var whatLabel: UILabel!
    @IBOutlet weak var assetImageView: UIImageView!
    @IBOutlet weak var linkButton: UIButton!
    
    static let identifier = "ShoutOutsTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "ShoutOutsTableViewCell", bundle: nil)
    }
    
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
