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
    
    var operations: Dictionary<String,Operation> = [
        "π" : Operation.Constant(Double.pi),
        "e" : Operation.Constant(M_E),
        "√" : Operation.UnaryOperation,
        "cos" : Operation.UnaryOperation
    ]
    
    enum Operation {
        case Constant(Double)
        case UnaryOperation
        case BinaryOperation
        case Equals
    }
    
    func performOperation(symbol: String) {
        if let operation = operations[symbol] {
            switch operation {
            case .Constant(let value): accumulator = value
            case .UnaryOperation: break
            case .BinaryOperation: break
            case .Equals: break
            }
        }
//        switch symbol {
//        case "π": accumulator = Double.pi
//        case "√": accumulator = sqrt(accumulator)
//        default:
//            accumulator = 0.0
//        }
    }
    
    var result: Double {
        get {
            return accumulator
        }
    }
}
