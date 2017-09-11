//
//  calculatorModel.swift
//  calculator
//
//  Created by Master on 11/09/2017.
//  Copyright © 2017 Master. All rights reserved.
//

import Foundation

class CalculatorModel {
    
    private var accumulator = 0.0
    
    func setOperand(operand: Double) {
        accumulator = operand
    }
    
    func performOperation(symbol: String) {
        switch symbol {
        case "π": accumulator = Double.pi
        case "√": accumulator = sqrt(accumulator)
        default:
            accumulator = 0.0
        }
    }
    
    var result: Double {
        get {
            return accumulator
        }
    }
}
