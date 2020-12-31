//
//  ViewController.swift
//  Detroit 909
//
//  Created by Matt Dolan External macOS on 2020-12-31.
//  Copyright © 2020 Matt Dolan External macOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var detroit909Label: UILabel!
    @IBOutlet weak var bassDrumButton: UIButton!
    @IBOutlet weak var snareDrumButton: UIButton!
    @IBOutlet weak var lowTomButton: UIButton!
    @IBOutlet weak var midTomButton: UIButton!
    @IBOutlet weak var hiTomButton: UIButton!
    @IBOutlet weak var rimButton: UIButton!
    @IBOutlet weak var clapButton: UIButton!
    @IBOutlet weak var closedHatButton: UIButton!
    @IBOutlet weak var openHatButton: UIButton!
    @IBOutlet weak var crashButton: UIButton!
    @IBOutlet weak var rideButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .black
    }

    @IBAction func drumMachineButtonPressed(_ sender: UIButton) {
        //sender.backgroundColor = UIColor.red
    }
    
    func drumMachineButtonUI() {
        bassDrumButton.backgroundColor = .white
        snareDrumButton.backgroundColor = .white
        lowTomButton.backgroundColor = .white
        midTomButton.backgroundColor = .white
        hiTomButton.backgroundColor = .white
        rimButton.backgroundColor = .white
        clapButton.backgroundColor = .white
        closedHatButton.backgroundColor = .white
        openHatButton.backgroundColor = .white
        crashButton.backgroundColor = .white
        rideButton.backgroundColor = .white
    }
    
}

