//
//  ContactTableViewCell.swift
//  Detroit 909
//
//  Created by Matt Dolan External macOS on 2021-03-23.
//  Copyright © 2021 Matt Dolan External macOS. All rights reserved.
//

import UIKit

class ContactTableViewCell: UITableViewCell {

    @IBOutlet weak var cellLabel: UILabel!
    
    static let identifier = "ContactTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "ContactTableViewCell", bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
