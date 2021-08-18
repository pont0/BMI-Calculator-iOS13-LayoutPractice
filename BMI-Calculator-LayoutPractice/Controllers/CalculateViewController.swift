//
//  ViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    var bmiValue = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var heightOutlet: UISlider!
    @IBOutlet weak var weightOutlet: UISlider!
    
    @IBAction func heightSlider(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height)m"
        
        
    }
    @IBOutlet weak var weightLabel: UILabel!

    @IBAction func weightSlider(_ sender: UISlider) {
        let weight = String(Int(sender.value))
        weightLabel.text = "\(weight)kg"
    }
    
    @IBAction func CalculateButton(_ sender: UIButton) {
        let height = heightOutlet.value
        let weight = weightOutlet.value
        let bmi = weight / pow(height, 2)
        bmiValue = String(format: "%.1f",bmi)
        print(bmiValue)
        
    
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            print(bmiValue)
            if (segue.identifier == "goToResult") {
                let destinationVC = segue.destination as! ResultViewController
                destinationVC.bmiValue = bmiValue
                print(destinationVC.bmiValue)
                
            }
        }
    
    
    
}

