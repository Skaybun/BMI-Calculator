//
//  ViewController.swift
//  BMI Calculator-
//
//  Created by Ali KINU on 28.08.2022.
//

import UIKit

class CalculateViewController: UIViewController {
   
    var calculatorBrain = CalculatorBrain()
    @IBOutlet weak var weighLabel: UILabel!
    @IBOutlet weak var heighLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
   
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func heightSliderPressed(_ sender: UISlider) {
        heighLabel.text = String(format: "%.2f m", sender.value) 
    }
    
    @IBAction func weightSliderPressed(_ sender: UISlider) {
        weighLabel.text = String(format: "%.0f Kg", sender.value)
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value

        calculatorBrain.calculateBMI(height: height, weight: weight)

        self.performSegue(withIdentifier: "goToResult", sender: self)
    
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! resultViewConrollerViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
    

}





