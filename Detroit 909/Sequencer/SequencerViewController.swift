//
//  SequencerViewController.swift
//  Detroit 909
//
//  Created by Matt Dolan External macOS on 2021-03-07.
//  Copyright © 2021 Matt Dolan External macOS. All rights reserved.
//

import UIKit

class SequencerViewController: UIViewController {

    @IBOutlet weak var backButtonBarItem: UIBarButtonItem!
    
    @IBOutlet weak var drumSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var sequencerCollectionView: UICollectionView!
    
    @IBOutlet weak var bpmSlider: UISlider!
    
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    
    @IBOutlet weak var bpmLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        drumSegmentedControl.setTitle("Kick", forSegmentAt: 0)
        drumSegmentedControl.setTitle("Snare", forSegmentAt: 1)
        drumSegmentedControl.setTitle("LTom", forSegmentAt: 2)
        drumSegmentedControl.setTitle("MTom", forSegmentAt: 3)
        drumSegmentedControl.setTitle("HTom", forSegmentAt: 4)
        drumSegmentedControl.setTitle("Rim", forSegmentAt: 5)
        drumSegmentedControl.setTitle("Clap", forSegmentAt: 6)
        drumSegmentedControl.setTitle("CHH", forSegmentAt: 7)
        drumSegmentedControl.setTitle("OHH", forSegmentAt: 8)
        drumSegmentedControl.setTitle("Crash", forSegmentAt: 9)
        drumSegmentedControl.setTitle("Ride", forSegmentAt: 10)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func drumSegmentedControllSelected(_ sender: UISegmentedControl) {
    }
    @IBAction func bpmSliderValue(_ sender: UISlider) {
    }
    
    @IBAction func startButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func stopButtonPressed(_ sender: UIButton) {
    }
    
    
    @IBAction func resetButtonPressed(_ sender: UIButton) {
    }
    
}
