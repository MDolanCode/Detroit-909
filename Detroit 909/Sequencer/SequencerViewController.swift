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
