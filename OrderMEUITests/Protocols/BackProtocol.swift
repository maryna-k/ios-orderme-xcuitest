//
//  BackProtocol.swift
//  orderMe
//
//  Created by Maryna Kalachova on 2025-05-18.
//  Copyright © 2025 Boris Gurtovoy. All rights reserved.
//

import XCTest

protocol BackProtocol {
    func backTo<T>(screen: T) -> T
}

extension BackProtocol {
    var backButton: Button {
        get {
            return XCUIApplication().buttons["backButton"].build()
        }
    }
    
    @discardableResult
    func backTo<T>(screen: T) -> T {
        backButton.tap()
        return screen
    }
}
