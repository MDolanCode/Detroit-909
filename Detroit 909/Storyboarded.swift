//
//  Storyboarded.swift
//  Detroit 909
//
//  Created by Matt Dolan External macOS on 2021-03-16.
//  Copyright © 2021 Matt Dolan External macOS. All rights reserved.
//

import Foundation
import UIKit

protocol Storyboarded {
    static func instantiate() -> Self
}

extension Storyboarded where Self: UIViewController {
    static func instantiate() -> Self {
        let id = String(describing: self)
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        return storyboard.instantiateViewController(identifier: id) as! Self
    }
}
