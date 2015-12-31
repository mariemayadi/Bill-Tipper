//
//  ViewController.swift
//  tipper
//
//  Created by Mariem Ayadi on 12/31/15.
//  Copyright © 2015 Mariem Ayadi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //All outlets are placed here
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tipLabel.text = "0.00"
        totalLabel.text = "$0.00"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
        
        var tipPercentages = [0.18, 0.2, 0.22]
        var selectedTipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        //print("User is editing the bill")
        var billAmount = NSString(string: billField.text!).doubleValue
        var tip = billAmount * selectedTipPercentage
        var total = billAmount + tip
        
        //use this notation to substitute a value "\(...)"
        //tipLabel.text = "\(tip)"
        //totalLabel.text = "\(total)"
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }

}

