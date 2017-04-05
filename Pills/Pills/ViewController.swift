//
//  ViewController.swift
//  Pills
//
//  Created by Daniel Carlson on 4/2/17.
//  Copyright © 2017 Daniel Carlson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var statePickerBtn: UIButton!
    
    let states = ["Alabama", "Alaska", "California", "Washington DC", "Ohio", "Denver", "Colorado", "Columbia", "Cleveland", "San Antonio", "San Francisco", "Los Angeles", "Texas"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

