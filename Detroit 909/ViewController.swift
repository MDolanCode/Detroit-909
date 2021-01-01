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
    
    var player: AVAudioPlayer?
    
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
        drumMachineButtonUI()
    }
    
    @IBAction func drumMachineButtonPressed(_ sender: UIButton) {
        playSound()
        //sender.backgroundColor = .red
    }
    
    func drumMachineButtonUI() {
        // background colour for drum machine buttons
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
        
        // corner radius for buttons
        bassDrumButton.layer.cornerRadius = 16
        snareDrumButton.layer.cornerRadius = 16
        lowTomButton.layer.cornerRadius = 16
        midTomButton.layer.cornerRadius = 16
        hiTomButton.layer.cornerRadius = 16
        rimButton.layer.cornerRadius = 16
        clapButton.layer.cornerRadius = 16
        closedHatButton.layer.cornerRadius = 16
        openHatButton.layer.cornerRadius = 16
        crashButton.layer.cornerRadius = 16
        rideButton.layer.cornerRadius = 16
    }
    
    // this is for playing the sounds
    func playSound() {
        guard let url = Bundle.main.url(forResource: "Bass Drum_1", withExtension: "wav") else { return }
        
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
            
            /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
            
            /* iOS 10 and earlier require the following line:
             player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
            
            guard let player = player else { return }
            
            player.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
    }
}

