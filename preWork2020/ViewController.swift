//
//  ViewController.swift
//  preWork2020
//
//  Created by Kelvin Martinez on 7/21/20.
//  Copyright © 2020 Kelvin Martinez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //@IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipController: UISegmentedControl!
    //@IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
       
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Tip Calculator"
        // added basic features
    }

    @IBAction func onTap(_ sender: Any) {
        
       //tried adding part here
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentage = [0.15, 0.18, 0.20]
        
        let tip = bill * tipPercentage[tipController.selectedSegmentIndex]
        let total = bill + tip
        
        tipPercentageLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String (format:"%.2f",total)
    }
    
   
}

