//
//  Detroit909ViewController.swift
//  Detroit 909
//
//  Created by Matt Dolan External macOS on 2020-12-31.
//  Copyright © 2020 Matt Dolan External macOS. All rights reserved.
//

import UIKit

class Detroit909ViewController: UIViewController, Storyboarded {
    weak var coordinator: MainCoordinator?
    
    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var detroit909Label: UILabel!
    @IBOutlet weak var bassDrumButton: DrumPadButton!
    @IBOutlet weak var snareDrumButton: DrumPadButton!
    @IBOutlet weak var lowTomButton: DrumPadButton!
    @IBOutlet weak var midTomButton: DrumPadButton!
    @IBOutlet weak var hiTomButton: DrumPadButton!
    @IBOutlet weak var rimButton: DrumPadButton!
    @IBOutlet weak var clapButton: DrumPadButton!
    @IBOutlet weak var closedHatButton: DrumPadButton!
    @IBOutlet weak var openHatButton: DrumPadButton!
    @IBOutlet weak var crashButton: DrumPadButton!
    @IBOutlet weak var rideButton: DrumPadButton!
    
    var drumPadSound = DrumPadSound()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundView.backgroundColor = .black
        drumPadButtonTitle()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    @IBAction func drumMachineButtonPressed(_ sender: DrumPadButton) {
        
        drumPadSound.playSound(drumSound: sender.currentTitle!)
        
        sender.alpha = 0.8
        sender.backgroundColor = .gray
        
        // Timer for colour change and opacity.
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            // Bring's sender's opacity back up to fully opaque.
            sender.alpha = 1.0
            sender.backgroundColor = .white
        }
    }
    
    func drumPadButtonTitle() {
        bassDrumButton.setTitle("BASS DRUM", for: .normal)
        snareDrumButton.setTitle("SNARE DRUM", for: .normal)
        lowTomButton.setTitle("LOW TOM", for: .normal)
        midTomButton.setTitle("MID TOM", for: .normal)
        hiTomButton.setTitle("HI TOM", for: .normal)
        rimButton.setTitle("RIM", for: .normal)
        clapButton.setTitle("CLAP", for: .normal)
        closedHatButton.setTitle("CLOSED HAT", for: .normal)
        openHatButton.setTitle("OPEN HAT", for: .normal)
        crashButton.setTitle("CRASH", for: .normal)
        rideButton.setTitle("RIDE", for: .normal)
    }
    
    @IBAction func settingsButtonPressed(_ sender: UIButton) {
        coordinator?.settings()
    }
}
