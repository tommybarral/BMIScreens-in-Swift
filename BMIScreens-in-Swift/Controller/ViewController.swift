//
//  ViewController.swift
//  BMIScreens-in-Swift
//
//  Created by tommy on 02/04/2020.
//  Copyright © 2020 tommy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var bmiValue = "0.0"
    var calculatorData = CalculatorData()
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightCalc: UISlider!
    @IBOutlet weak var weightCalc: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func heightSlider(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height)m"
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight)Kg"
    }
    
    @IBAction func calc(_ sender: UIButton) {
        let height = heightCalc.value
        let weight = weightCalc.value
        calculatorData.resultBMI(height: height, weight: weight)

        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let resultView = segue.destination as! ResultsViewController
            resultView.bmiValue = calculatorData.getBMIValue()
            resultView.advice = calculatorData.getAdvice()
            resultView.color = calculatorData.getColor()
        }
    }
}

