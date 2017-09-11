//
//  ViewController.swift
//  calculator
//
//  Created by Master on 06/09/2017.
//  Copyright © 2017 Master. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var display: UILabel!
    
    var userIsInMiddleOfTyping : Bool = false
    
    @IBAction private func digitButtonPushed(_ sender: UIButton) {
        let digit : String = sender.currentTitle!
        
        if userIsInMiddleOfTyping {
            let currentDisplayText = display.text!
            display.text = currentDisplayText + digit
        } else {
            display.text = digit
        }
        
        userIsInMiddleOfTyping = true
    }
    
    private var displayValue: Double {
        get {
            return Double(display.text!)!
        }
        set {
            display.text = String(newValue)
        }
    }
    
    private var model = CalculatorModel()
    
    @IBAction private func performOperation(_ sender: UIButton) {
        if userIsInMiddleOfTyping {
            model.setOperand(operand: displayValue)
            userIsInMiddleOfTyping = false
        }
        if let mathematicalSymbol = sender.currentTitle {
            model.performOperation(symbol: mathematicalSymbol)
//            if mathematicalSymbol == "π" {
//                displayValue = Double.pi
//            } else if mathematicalSymbol == "√" {
//                displayValue = sqrt(displayValue)
//            }
        }
        displayValue = model.result
    }
    
    
}

