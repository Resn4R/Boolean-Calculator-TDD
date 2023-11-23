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
        
        XCTAssertTrue(BooleanCalculator.getValue(of: sample))
    }

}
