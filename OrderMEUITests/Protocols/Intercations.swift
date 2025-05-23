//
//  Intercations.swift
//  orderMe
//
//  Created by Maryna Kalachova on 2025-05-21.
//  Copyright © 2025 Boris Gurtovoy. All rights reserved.
//

import XCTest

protocol Interactions: States {}

extension Interactions {
    func tap() {
        guard element.waitForExistence(timeout: defaultTimeout) else {
            XCTFail("Element \(element.description) is not visible")
            return
        }
        element.tap()
    }
}
