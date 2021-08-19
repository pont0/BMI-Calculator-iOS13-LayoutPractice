//
//  CalculateBrain.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Bruna Machado on 18/08/21.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import Foundation

struct CalculatorBrain {

    var height: Float
    var weight: Float
    var bmiValue: Float
    
    func getBMIValue() -> String {
        let bmi = String(format: "%.1f",bmiValue)
        return bmi
    }
    
    mutating func calculate() {
        
        bmiValue = weight / pow(height, 2)
            //String(format: "%.1f",bmi)
        
    }
    
}
