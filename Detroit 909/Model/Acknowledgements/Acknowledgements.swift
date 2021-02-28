//
//  Acknowledgements.swift
//  Detroit 909
//
//  Created by Matt Dolan External macOS on 2021-02-28.
//  Copyright © 2021 Matt Dolan External macOS. All rights reserved.
//

import Foundation
import UIKit

struct Acknowledgements {
    let whatIsAcknowledged: String
    let acknowledgement: String
    let asset: UIImageView
    
    init(whatIsAcknowledged: String, acknowledgement: String, asset: UIImageView) {
        self.whatIsAcknowledged = whatIsAcknowledged
        self.acknowledgement = acknowledgement
        self.asset = asset
    }
}
