//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Iurie Guzun on 2020-05-05.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
       let bmiValue = weight / (height * height)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        } else {
             bmi = BMI(value: bmiValue, advice: "Eat less pies", color: #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1))
        }
        
    }
    func getBMIValue () -> String {
        let bmi1Dec = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmi1Dec
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    func getColor() -> UIColor {
        return bmi?.color ??  #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
}
