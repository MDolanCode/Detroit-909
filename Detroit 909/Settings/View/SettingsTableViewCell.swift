//
//  SettingsTableViewCell.swift
//  Detroit 909
//
//  Created by Matt Dolan External macOS on 2021-02-15.
//  Copyright © 2021 Matt Dolan External macOS. All rights reserved.
//

import UIKit

class SettingsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var cellLabel: UILabel!
    @IBOutlet weak var cellButton: UIButton!
    
    static let identifier = "SettingsTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "SettingsTableViewCell", bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func cellButtonPressed(_ sender: UIButton) {
        
    }

    
}
