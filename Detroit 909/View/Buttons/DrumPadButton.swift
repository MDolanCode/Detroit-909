//
//  DrumPadButton.swift
//  Detroit 909
//
//  Created by Matt Dolan External macOS on 2021-02-07.
//  Copyright © 2021 Matt Dolan External macOS. All rights reserved.
//

import UIKit

class DrumPadButton: UIButton {
    
    required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        
        backgroundColor = .white
        layer.cornerRadius = 20
    }
}
