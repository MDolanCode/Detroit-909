//
//  DrumPad.swift
//  Detroit 909
//
//  Created by Matt Dolan External macOS on 2021-01-26.
//  Copyright © 2021 Matt Dolan External macOS. All rights reserved.
//

import UIKit

class DrumPad: UIButton {
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        self.layer.cornerRadius = 16
        self.backgroundColor = .white
        
    }
}
