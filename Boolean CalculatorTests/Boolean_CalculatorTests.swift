//
//  Boolean_CalculatorTests.swift
//  Boolean CalculatorTests
//
//  Created by Vito Borghi on 23/11/2023.
//

import XCTest
@testable import Boolean_Calculator

final class Boolean_CalculatorTests: XCTestCase {
    func testGivenTRUEWhenAskedValueReturnstrue() {        
        let sample = "true"
        
        XCTAssertTrue((BooleanCalculator.getEvaluation(of: sample) != nil))
    }
    
    func testGivenFALSEWhenAskedValueReturnsfalse() {
        let sample = "false"
        
        XCTAssertFalse((BooleanCalculator.getEvaluation(of: sample) != nil))
    }
    
    
    func testGivenInvalidInputWhenAskedValueReturnsfalse() {
        let sample = "invalid input"
        
        XCTAssertNil(BooleanCalculator.getEvaluation(of: sample))
    }
    
    func testGivenTwoTRUEInputsWhenAskedForNOTOperatorReturnsTrue() {
        let sample = "NOT false"

        
        XCTAssertTrue((BooleanCalculator.getEvaluation(of: sample) != nil))
    }
    
}
