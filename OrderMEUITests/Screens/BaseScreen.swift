//
//  BaseScreen.swift
//  orderMe
//
//  Created by Maryna Kalachova on 2025-05-13.
//  Copyright © 2025 Boris Gurtovoy. All rights reserved.
//

import XCTest

class BaseScreen: Initializable {
    static let app = XCUIApplication()
    
    let element: XCUIElement
    let description: String
    let timeout: Double

    required init(element: XCUIElement = app, description: String? = nil, timeout: Double? = nil) {
        self.element = element
        self.description = description ?? String(describing: Self.self)
        self.timeout = timeout ?? defaultTimeout
    }
}
