//
//  ViewController.swift
//  CodePath pre-work Cal
//
//  Created by Haoliang Zhang on 1/14/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billAmountText: UITextField!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        // Get bill amount from text filed input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // Get Total tip by multipying tip * tipPercetage
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill *
            tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        // update Total Amount
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

