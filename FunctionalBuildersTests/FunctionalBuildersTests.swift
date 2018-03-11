//
//  FunctionalBuildersTests.swift
//  FunctionalBuildersTests
//
//  Created by Szymon Mrozek on 07.03.2018.
//  Copyright © 2018 SzymonMrozek. All rights reserved.
//

import XCTest
@testable import FunctionalBuilders

precedencegroup LeftApplyPrecedence {
    associativity: left
    higherThan: AssignmentPrecedence
    lowerThan: TernaryPrecedence
}

precedencegroup FunctionCompositionPrecedence {
    associativity: right
    higherThan: LeftApplyPrecedence
}

// Piping

infix operator |>: LeftApplyPrecedence

public func |> <A, B> (x: A, f: (A) -> B) -> B {
    return f(x)
}

// Function composition

infix operator >>> : FunctionCompositionPrecedence

public func >>> <A, B, C> (f: @escaping (A) -> B, g: @escaping (B) -> C) -> (A) -> C {
    return { g(f($0)) }
}

class FunctionalBuildersTests: XCTestCase {
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func someTest() {
        let someSource = UIView()
        
        someSource.constraintBuilder
            |> ConstraintBuilder.widthConstraint(constant: 24.0)
            >>> ConstraintBuilder.heightConstraint(constant: 20.0)
            >>> ConstraintBuilder.activate
    }
    
}
