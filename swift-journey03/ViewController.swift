//
//  ViewController.swift
//  swift-journey03
//
//  Created by Leonardo Kameya on 10/08/18.
//  Copyright © 2018 Leonardo Kameya. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {

    var audioPlayer : AVAudioPlayer!
    var selectedSoundFileName : String = ""

    let soundArray = ["kick1", "snare1", "hihat1", "tom1", "tom2", "ride1", "crash1"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func itemPressed(_ sender: UIButton) {
        selectedSoundFileName = soundArray[sender.tag - 1]
        
        playSound()
    }
    
    func playSound() {
        let soundURL = Bundle.main.url(forResource: selectedSoundFileName, withExtension: "wav")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
        
        audioPlayer.play()
    }
}

