//
//  ViewController.swift
//  calculator
//
//  Created by Master on 06/09/2017.
//  Copyright © 2017 Master. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    
    var userIsInMiddleOfTyping : Bool = false
    
    @IBAction func digitButtonPushed(_ sender: UIButton) {
        let digit : String = sender.currentTitle!
        
        if userIsInMiddleOfTyping {
            let currentDisplayText = display.text!
            display.text = currentDisplayText + digit
        } else {
            display.text = digit
        }
        
        userIsInMiddleOfTyping = true
    }
    
    @IBAction func performOperation(_ sender: UIButton) {
        userIsInMiddleOfTyping = false
        if let mathematicalSymbol = sender.currentTitle {
            if mathematicalSymbol == "π" {
                display.text = String(M_PI)
            }
        }
    
    }
    
    
}

