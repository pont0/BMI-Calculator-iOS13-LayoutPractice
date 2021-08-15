//
//  ViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var heightLabel: UILabel!
    
    @IBAction func heightSlider(_ sender: UISlider) {
        
        heightLabel.text = String(format: "%.2f", sender.value)
        
        
    }
    @IBOutlet weak var weightLabel: UILabel!

    @IBAction func weightSlider(_ sender: UISlider) {
        weightLabel.text = String(Int(sender.value))
    }
    
    
    
}

