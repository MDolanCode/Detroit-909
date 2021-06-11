//
//  DrumPad.swift
//  Detroit 909
//
//  Created by Matt Dolan External macOS on 2021-02-09.
//  Copyright © 2021 Matt Dolan External macOS. All rights reserved.
//

import Foundation
import AVFoundation

class DrumPadSound: NSObject, AVAudioPlayerDelegate {
    
    static let sharedInstance = DrumPadSound()
    
    var players: [URL: AVAudioPlayer] = [:]
    var duplicatePlayers: [AVAudioPlayer] = []
    
    func playSound(drumSound: String) {
        
        guard let bundle = Bundle.main.path(forResource: drumSound, ofType: "wav") else { return }
        let soundFileNameURL = URL(fileURLWithPath: bundle)
        
        // Player for sound has been found.
        if let player = players[soundFileNameURL] {
            
            // Player is not in use.
            if !player.isPlaying {
                player.prepareToPlay()
                player.play()
                
                // Player is in use, create a new, and duplicate player.
            } else {
                
                do {
                    let duplicatePlayer = try AVAudioPlayer(contentsOf: soundFileNameURL)
                    
                    // Assign delegate for duplicatePlayer so delegate can remove the duplicate once it's stopped playing.
                    duplicatePlayer.delegate = self
                    
                    // Add duplicate to array so it doesn't get removed from memory before finishing.
                    duplicatePlayers.append(duplicatePlayer)
                    
                    duplicatePlayer.prepareToPlay()
                    duplicatePlayer.play()
                } catch let error {
                    print(error.localizedDescription)
                }
                
            }
            // Player has not been found, create a new player with the URL.
        } else {
            do {
                let player = try AVAudioPlayer(contentsOf: soundFileNameURL)
                players[soundFileNameURL] = player
                player.prepareToPlay()
                player.play()
            } catch let error {
                print(error.localizedDescription)
            }
        }
    }
    
    func playSounds(soundFileNames: [String]) {
        for soundFileName in soundFileNames {
            playSound(drumSound: soundFileName)
        }
    }
    
    func playSounds(soundFileNames: String...) {
        for soundFileName in soundFileNames {
            playSound(drumSound: soundFileName)
        }
    }
    
    // withDelay is in seconds
    func playSounds(soundFileNames: [String], withDelay: Double) {
        for (index, soundFileName) in soundFileNames.enumerated() {
            let delay = withDelay * Double(index)
            let _ = Timer.scheduledTimer(timeInterval: delay, target: self, selector: #selector(playSoundNotification(_:)), userInfo: ["fileName": soundFileName], repeats: false)
        }
    }
    
    @objc func playSoundNotification(_ notification: NSNotification) {
        if let soundFileName = notification.userInfo?["fileName"] as? String {
            playSound(drumSound: soundFileName)
        }
    }
    
    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
        if let index = duplicatePlayers.firstIndex(of: player) {
            duplicatePlayers.remove(at: index)
        }
    }
}
