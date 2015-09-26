//
//  ViewController.swift
//  Tipster
//
//  Created by Dominic Dagradi on 9/26/15.
//  Copyright © 2015 ddagradi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billAmountField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!

    // This is the function that gets run when the view is shown on the screen.
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        tipAmountLabel.text = "$0.00"
        totalLabel.text = "$0.00"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChange(sender: AnyObject) {
        let tipPercentages = [0.18, 0.20, 0.23]
        let tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]

        let billAmount = NSString(string: billAmountField.text!).doubleValue
        let tipAmount = billAmount * tipPercentage
        let total = billAmount + tipAmount

        tipAmountLabel.text = "$\(tipAmount)"
        totalLabel.text = "$\(total)"

        print(tipControl.selectedSegmentIndex)
    }

}

