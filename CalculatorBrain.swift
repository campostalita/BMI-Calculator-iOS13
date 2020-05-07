//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by user167993 on 5/6/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit


struct CalculatorBrain {
    
    var bmi: BMI?
    var advice: String?
    var color: UIColor?
    
    func getBMIvalue() -> String {
        let bmiTo1DecimalPlace =  String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
      func getAdvice() -> String {
          return bmi?.advice ?? "No advice"
      }
    
      func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
    }

    mutating func calculateBMI(height:Float, weight: Float) {
       let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat More!!", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1) )
        }else if bmiValue < 24.5 {
            bmi = BMI(value: bmiValue, advice: "Well, Keep it up!!", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        }else{
            bmi = BMI(value: bmiValue, advice: "You need to eat less!!", color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        }
    
}
    
}
