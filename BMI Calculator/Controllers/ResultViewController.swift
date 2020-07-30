//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Rohit sahu on 21/07/20.

//

import UIKit

class ResultViewController: UIViewController {
  
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiResult.text = String(format :"%.1f",bmi?.value ?? 0.0)
        adviceLabel.text = bmi?.advice
        view.backgroundColor = bmi?.color
    }
    var bmi : Bmi?

    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var bmiResult: UILabel!
    @IBAction func recalculatePressed(_ sender: UIButton) {
       
        self.dismiss(animated : true ,completion : nil)
    }
    


}
