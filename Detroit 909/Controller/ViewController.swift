//
//  ViewController.swift
//  Detroit 909
//
//  Created by Matt Dolan External macOS on 2020-12-31.
//  Copyright © 2020 Matt Dolan External macOS. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        drumPadButtonTitle()
    }
    
    @IBAction func drumMachineButtonPressed(_ sender: UIButton) {
        playSound(drumSound: sender.currentTitle!)
        sender.backgroundColor = .gray
        sender.alpha = 0.8
        // Timer for colour change and opacity.
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            print("End")
            // Bring's sender's opacity back up to fully opaque.
            sender.backgroundColor = .white
            sender.alpha = 1.0
        }
    }
    // This is for playing the sounds
    func playSound(drumSound: String) {
        let url = Bundle.main.url(forResource: drumSound, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player!.play()
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
}

