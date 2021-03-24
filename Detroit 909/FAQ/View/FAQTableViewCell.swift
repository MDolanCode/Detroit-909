//
//  FAQTableViewCell.swift
//  Detroit 909
//
//  Created by Matt Dolan External macOS on 2021-02-19.
//  Copyright © 2021 Matt Dolan External macOS. All rights reserved.
//

import UIKit

class FAQTableViewCell: UITableViewCell {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
