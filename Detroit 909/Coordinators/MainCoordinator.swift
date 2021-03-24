//
//  MainCoordinator.swift
//  Detroit 909
//
//  Created by Matt Dolan External macOS on 2021-03-16.
//  Copyright © 2021 Matt Dolan External macOS. All rights reserved.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = Detroit909ViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    func settings() {
        let vc = SettingsViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    func faq() {
        let vc = FAQViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    func acknowledgement() {
        let vc = AcknowledgementsViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    func goBack() {
        navigationController.popViewController(animated: false)
    }
}
