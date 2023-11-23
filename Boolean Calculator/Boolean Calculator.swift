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
        
    static private func getValue(of string: String) -> Bool? {
        guard string.lowercased() == "true" || string.lowercased() == "false" else { return nil }
        return tableOfTruth[string.lowercased()]!
    }
    
    static func getEvaluation (of string: String) -> Bool? {
        guard string.count > 0 else { return nil }
        
        let stringValues: [String] = string.components(separatedBy: " ")
        
        guard stringValues.count > 1 else { return getValue(of: stringValues[0]) }
        
        let operators: [String] = stringValues.filter{
            $0.lowercased() == "and" || $0.lowercased() == "or" || $0.lowercased() == "not"
        }
        let values: [String] = stringValues.filter{
            $0.lowercased() == "true" || $0.lowercased() == "false"
        }
        
        switch operators[0] {
        case "and": return nil
        case "or": return nil
        case "not": return !getValue(of: values[0])!
        default: return nil
        }
    }
}
