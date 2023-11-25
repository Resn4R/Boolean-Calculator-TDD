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
        guard (string == "true" || string == "false") else { return nil }
        guard let value = tableOfTruth[string] else { return nil }
        return value
    }
    
    static func getEvaluation (of string: String) -> Bool? {
        
        let processedInput = string.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
        
        let inputValues = processedInput.split(separator: " ")
        
        var operators = [String?]()
        var booleans = [String]()
        
        inputValues.forEach { substring in
            switch substring {
            case "not": operators.append(String(substring))
            case "and": operators.append(String(substring))
            case "or": operators.append(String(substring))
            default: booleans.append(String(substring))
            }
        }
        guard !operators.isEmpty else { return getValue(of: processedInput) }
        
        return NOT(getValue(of: booleans[0]) ?? false)
        
    }
    
    static private func NOT(_ value: Bool) -> Bool {
        !value
    }
    
    static private func AND(_ value: Bool, _ value2: Bool) -> Bool {
        value && value2
    }
    
    static private func OR(_ value: Bool, _ value2: Bool) -> Bool {
        value || value2
    }
}
