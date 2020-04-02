//
//  CalculatorData.swift
//  BMIScreens-in-Swift
//
//  Created by tommy on 02/04/2020.
//  Copyright © 2020 tommy. All rights reserved.
//

import UIKit

struct CalculatorData {
    
    
    var bmi: CustomBMI?
    
    mutating func resultBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = CustomBMI(value: bmiValue, advice: "dépassez les caloris recommandées", color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = CustomBMI(value: bmiValue, advice: "Stabilisez votre poid", color: #colorLiteral(red: 0.3215686275, green: 0.8705882353, blue: 0.5921568627, alpha: 1))
        } else {
            bmi = CustomBMI(value: bmiValue, advice: "Oubliez les aliments riches en graisses", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        }
    }
    
    func getBMIValue() -> String {
        let pasteBMI = String(format: "%.1f", bmi?.value ?? 0.0)
            return pasteBMI
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
    }
}
