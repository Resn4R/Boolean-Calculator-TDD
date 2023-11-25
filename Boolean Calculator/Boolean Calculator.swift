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
        
        var processedInput = string.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
        
        var inputValues = processedInput.split(separator: " ")
        inputValues.reverse()
        var processedValues = inputValues.reduce([String]()) { partialResult, Substring in
            
            switch Substring {
            case "not": 
                switch partialResult.first {
                case .some( let value):
                    var updatedFirst: [String] = ["not \(value)"]
                    return updatedFirst + partialResult.dropFirst()
                default: return ["not"]
                }
            default: return [String(Substring)] + partialResult
            }
           
           
        }
        
        var operators = processedValues.filter { string in
            String(string) == "and" || String(string) == "or"
        }
        
        var rawBooleans = processedValues.filter { string in
            String(string) != "and" && String(string) != "or"
        }
        
        var processedBooleans =  rawBooleans.compactMap { value in
            if value.description.count > 5 {
                var strings = String(value).split(separator: " ")
                strings.removeAll { Substring in
                    Substring != "true" || Substring != "false"
                }
                return NOT(getValue(of: String(strings[0]))!)
            }
           return getValue(of:String(value))!
        }

        guard !operators.isEmpty else { return getValue(of: processedInput) }
        guard processedBooleans.count > 0 else { return nil }
        
        var result = Bool()

        return processedBooleans
            .dropFirst()
            .enumerated()
            .reduce(processedBooleans.first) { partialResult, current in
                switch partialResult {
                case .none: return nil
                case .some(let resultSoFar):
                   return combineOperatorAndBools(of: resultSoFar, and: current.element, with: String(operators[current.offset]))
                }
            }
    }
    
    static private func NOT(_ value: Bool) -> Bool {
        !value
    }
    
    static private func combineOperatorAndBools(of v1: Bool, and v2: Bool, with operatorString: String) -> Bool? {
        if operatorString == "and" {
            return v1 && v2
        } else if operatorString == "or" {
            return v1 || v2
        } else {
            return nil
        }
    }
}
