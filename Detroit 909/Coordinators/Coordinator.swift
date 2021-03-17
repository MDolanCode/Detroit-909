//
//  Coordinator.swift
//  Detroit 909
//
//  Created by Matt Dolan External macOS on 2021-03-16.
//  Copyright © 2021 Matt Dolan External macOS. All rights reserved.
//

import Foundation
import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] {get set}
    var navigationController: UINavigationController {get set}
    
    func start()
}
