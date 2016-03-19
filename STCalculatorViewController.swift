//
//  STCalculatorViewController.swift
//  SimpleTipCalculatorXCTest
//
//  Created by Mihail Șalari on 19.03.2016.
//  Copyright © 2016 PlatinumCode. All rights reserved.
//

import UIKit

class STCalculatorViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var txtBillAmount: UITextField!
    @IBOutlet weak var txtTaxPercentage: UITextField!
    @IBOutlet weak var switchIncludeTax: UISwitch!
    @IBOutlet weak var sliderTipPercentage: UISlider!
    @IBOutlet weak var lblBillAmount: UILabel!
    @IBOutlet weak var lblTaxtAmount: UILabel!
    @IBOutlet weak var lblTipAmount: UILabel!
    @IBOutlet weak var lblTotalAmount: UILabel!
    @IBOutlet weak var lblNotes: UILabel!
    @IBOutlet weak var lblCurrentTipPercentage: UILabel!
    
    
    let tipCalc = Calculator()
    
    var billAmount: Float? = 0
    var taxPercentage: Float? = 0
    var tipPercentage: Float? = 20
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        txtBillAmount.delegate = self
        txtTaxPercentage.delegate = self
        
        txtBillAmount.addTarget(self, action: "txtBillAmountDidChange", forControlEvents: .EditingChanged)
        txtTaxPercentage.addTarget(self, action: "txtTaxPercentageDidChange", forControlEvents: .EditingChanged)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    // MARK: -UITextField
    func txtBillAmountDidChange(textField: UITextField) {
        billAmount = (textField.text! as NSString).floatValue
        validateInput()
        updateValues()
    }
    
    
    func txtTaxPercentageDidChange(textField: UITextField) {
        taxPercentage = (textField.text! as NSString).floatValue
        validateInput()
        updateValues()
    }
    
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        let inverseSet = NSCharacterSet(charactersInString: "0123456789.").invertedSet
        let components = string.componentsSeparatedByCharactersInSet(inverseSet)
        let filtered = components.joinWithSeparator("")
        
        return string == filtered
    }
    
    
    // MARK: -For UITEST
    func veryImportantFunc() -> Bool {
        return false
    }
    
    private func validateInput() {
        if billAmount! < 0 {
            txtBillAmount.backgroundColor = UIColor.redColor()
        } else {
            txtBillAmount.backgroundColor = UIColor.greenColor()
        }
        
        if taxPercentage! < 0 {
            txtTaxPercentage.backgroundColor = UIColor.redColor()
        } else {
            txtTaxPercentage.backgroundColor = UIColor.greenColor()
        }
    }
    
    
    // MARK: -Update Value
    private func updateValues() {
        lblBillAmount.text = String(format: "$%.2f", billAmount!)
        let taxAmount = (taxPercentage! * billAmount!)
        lblBillAmount.text = String(format: "$%.2f", taxAmount)
        
        let tipPercentageString = String(format: "%.2f", tipPercentage!)
        let tipAmount = tipCalc.calculateTip(billAmount, taxPercentage: taxPercentage, tipPercentage: Float(tipPercentage!) / 100)
        
        lblBillAmount.text = String(format: "$%.2f", tipAmount!)
        let total = billAmount! + taxAmount + tipAmount!
        lblTotalAmount.text = String(format: "$%.2f", total)
    }
    
    // MARK: -@IBActions
    @IBAction func sliderValueChanged(sender: UISlider) {
        tipPercentage = Float(sender.value)
        updateValues()
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

}
