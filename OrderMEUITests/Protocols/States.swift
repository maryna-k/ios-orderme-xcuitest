//
//  States.swift
//  orderMe
//
//  Created by Maryna Kalachova on 2025-05-15.
//  Copyright © 2025 Boris Gurtovoy. All rights reserved.
//

import XCTest

protocol States: Initializable {
    var exists: Bool {get}
}

enum ElementStateType: String {
    case exists
}

extension States {
    var exists: Bool {
        element.exists
    }
}

extension States {
    @discardableResult
    func assert(state: ElementStateType = .exists, result: Bool = true, timeout: Double = 7, message: String? = nil) -> Self {
        var conditionMet = false
        switch state {
        case .exists:
            conditionMet = element.waitForExistence(timeout: timeout) == result
        }
        XCTAssert(conditionMet, message ?? #"Element: " \#(description), state: " \#(state.rawValue)" is not equal to "\#(result)"."#)
        return self
    }
}
