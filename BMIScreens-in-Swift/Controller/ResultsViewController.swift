//
//  TableViewController.swift
//  BMIScreens-in-Swift
//
//  Created by tommy on 02/04/2020.
//  Copyright © 2020 tommy. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    var bmiValue: String?
    var advice: String?
    var color: UIColor?

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
    }

    @IBAction func recalc(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
