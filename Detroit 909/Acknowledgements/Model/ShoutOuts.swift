//
//  ShoutOuts.swift
//  Detroit 909
//
//  Created by Matt Dolan External macOS on 2021-02-28.
//  Copyright © 2021 Matt Dolan External macOS. All rights reserved.
//

import Foundation
import UIKit

struct ShoutOuts {
    let who: String
    let what: String
    let urlString: String
    let image: UIImage
    
    init(who: String, what: String, urlString: String, image: UIImage) {
        self.who = who
        self.what = what
        self.urlString = urlString
        self.image = image
    }
}
