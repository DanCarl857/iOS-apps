//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Daniel Carlson on 6/14/17.
//  Copyright © 2017 Daniel Carlson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomIndex: Int = 0

    @IBOutlet weak var ballImageView: UIImageView!
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateAnswer()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        updateAnswer()
    }
    
    func updateAnswer() {
        
        randomIndex = Int(arc4random_uniform(5))
        
        ballImageView.image = UIImage(named: ballArray[randomIndex])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateAnswer()
    }

}

