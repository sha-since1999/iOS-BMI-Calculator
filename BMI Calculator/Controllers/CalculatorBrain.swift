
//
//  ClaculatorBrain.swift
//  BMI Calculator
//
//  Created by Rohit sahu on 22/07/20.



import Foundation

struct CalculatorBrain {
    var bmi : Bmi?
    func getBmi() -> Bmi
    {
//        return String(format: "%.1f", bmi?.value ?? 0.0)
        return bmi!

    }
    mutating func calculateBmi (height : Float,weight :Float)
    {
        let bmiValue =  weight / pow(height, 2)
        if bmiValue  < 18.5 {
        bmi = Bmi(value:bmiValue, advice:"eat more food", color:#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        }
        else if ( bmiValue < 24.9) {
        bmi =  Bmi(value:bmiValue, advice:" noraml weight", color:#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        }
        else  {
        bmi = Bmi(value:bmiValue, advice:"halthy", color:#colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))

        }
        

    }
    
}
