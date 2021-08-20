//
//  CalculateBrain.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Bruna Machado on 18/08/21.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import UIKit

struct CalculatorBrain {

    var height: Float
    var weight: Float 
    var bmi: BMI?
    
    
    
    func getBMIValue() -> String {
        let bmiValue = String(format: "%.1f",bmi?.value ?? 0.0)
        return bmiValue
    }
    
    func getAdvice() -> String {
        
        return bmi?.advice ?? "No advice"
    }
    
    func getbgColor() -> UIColor {
        
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    
    
    mutating func calculate() {
        
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5{
            bmi = BMI(value: bmiValue, advice: "eat more calories", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        }else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "stay eating the same", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        }else{
            bmi = BMI(value: bmiValue, advice: "eat less calories", color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        }
        
      
        
    }
    
   
    
}
