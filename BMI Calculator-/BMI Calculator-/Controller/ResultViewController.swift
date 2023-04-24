//
//  resultViewConrollerViewController.swift
//  BMI Calculator
//
//  Created by Ali KINU on 28.08.2022.

//

import UIKit

class resultViewConrollerViewController: UIViewController {
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    var bmiValue: String?
    var color: UIColor?
    var advice: String?
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
    }
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
}
