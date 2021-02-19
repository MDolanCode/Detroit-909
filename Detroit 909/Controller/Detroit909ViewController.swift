//
//  Detroit909ViewController.swift
//  Detroit 909
//
//  Created by Matt Dolan External macOS on 2020-12-31.
//  Copyright © 2020 Matt Dolan External macOS. All rights reserved.
//

import UIKit

class Detroit909ViewController: UIViewController {
    
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
        bassDrumButton.setTitle("Bass Drum", for: .normal)
        snareDrumButton.setTitle("Snare Drum", for: .normal)
        lowTomButton.setTitle("Low Tom", for: .normal)
        midTomButton.setTitle("Mid Tom", for: .normal)
        hiTomButton.setTitle("Hi Tom", for: .normal)
        rimButton.setTitle("Rim", for: .normal)
        clapButton.setTitle("Clap", for: .normal)
        closedHatButton.setTitle("Closed Hat", for: .normal)
        openHatButton.setTitle("Open Hat", for: .normal)
        crashButton.setTitle("Crash", for: .normal)
        rideButton.setTitle("Ride", for: .normal)
    }
    
    @IBAction func settingsButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "goToSettings", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSettings" {
            _ = segue.destination as! SettingsViewController
        }

    }
    
}
