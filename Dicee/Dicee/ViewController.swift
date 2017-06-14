//
//  ViewController.swift
//  Dicee
//
//  Created by Daniel Carlson on 6/13/17.
//  Copyright © 2017 Daniel Carlson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomIndex1: Int = 0
    var randomIndex2: Int = 0
    
    let imageArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDiceImages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        updateDiceImages()
    }
    
    func updateDiceImages() {
        
        randomIndex1 = Int(arc4random_uniform(6))
        randomIndex2 = Int(arc4random_uniform(6))
        
        diceImageView1.image = UIImage(named: imageArray[randomIndex1])
        diceImageView2.image = UIImage(named: imageArray[randomIndex2])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }

}

