//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    
    
    var audioPlayer: AVAudioPlayer!
    let sounds = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
        
        let selectedSoundFile: String = sounds[sender.tag - 1]
        
        playSound(soundFile: selectedSoundFile)
        
    }
    
    func playSound(soundFile: String) {
        
        let soundUrl = Bundle.main.url(forResource: soundFile, withExtension: "wav")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundUrl!)
        }
        catch {
            print(error)
        }
        
        audioPlayer.play()
    }
  

}

