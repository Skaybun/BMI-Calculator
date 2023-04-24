//
//  CalculatorBrain.swift
//  BMI Calculator-
//
//  Created by Ali KINU on 28.08.2022.
//

import UIKit
struct CalculatorBrain {
    
    var BMIValue : BMI?
    
    
    mutating func calculateBMI(height: Float , weight: Float)  {
        let bmi = weight / pow(height,2)
        
        if bmi < 18.5 {
            BMIValue = BMI(Value: bmi, Advice: "Eat More", Color:UIColor.gray)
        }
        else if bmi < 24.9 {
            BMIValue = BMI(Value: bmi, Advice: "Fit as a Fiddle", Color: UIColor.brown)
        }
        else {
            BMIValue = BMI(Value: bmi, Advice: "Eat Less", Color:UIColor.red)
        }
        
    }
      
    func getBMIValue() -> String {
        let  BMIValueStr = String(format: "%.1f", BMIValue?.Value ?? "0.0") 
        return BMIValueStr
    }
    func getAdvice() -> String {
        return BMIValue?.Advice ?? "NO ADVICE"
        
    }
    func getColor() -> UIColor {
        return BMIValue?.Color ?? UIColor.black
        
    }
}
