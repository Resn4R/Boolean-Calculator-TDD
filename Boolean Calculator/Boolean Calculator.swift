//
//  Boolean Calculator.swift
//  Boolean CalculatorTests
//
//  Created by Vito Borghi on 23/11/2023.
//

import Foundation

struct BooleanCalculator {
    //implements a Boolean calculator that gets a string as input and evaluates it to the Boolean result
    ///The table of truth is a [String:Bool] dictionary containing the converted values for true and false
    static let tableOfTruth: [String:Bool] = [
        "true": true,
        "false": false
    ]
    
    static func getValue(of string: String) -> Bool {
        guard string == "true" || string == "false" else { return false }
        return tableOfTruth[string.lowercased()]!
    }
    
    static func AND (lhs: String, rhs: String) -> Bool{
        return true
    }
}
