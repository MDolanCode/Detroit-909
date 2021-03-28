//
//  DrumPad.swift
//  Detroit 909
//
//  Created by Matt Dolan External macOS on 2021-02-09.
//  Copyright © 2021 Matt Dolan External macOS. All rights reserved.
//

import Foundation
import AVFoundation

class DrumPadSound {
    
    var player: AVAudioPlayer!
    
        // This is for playing the sounds
    func playSound(drumSound: String) {
        let url = Bundle.main.url(forResource: drumSound, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player!.play()
    }
}
