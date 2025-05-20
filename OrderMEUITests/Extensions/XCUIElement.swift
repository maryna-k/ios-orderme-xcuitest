//
//  XCUIElement.swift
//  orderMe
//
//  Created by Maryna Kalachova on 2025-05-15.
//  Copyright © 2025 Boris Gurtovoy. All rights reserved.
//

import XCTest

public var defaultTimeout = 7.0

extension XCUIElement {
    func build<T: Initializable>(description: String = "\(T.self)", timeout: Double = defaultTimeout) -> T {
        return build(type: T.self, description: description, timeout: timeout)
    }
    
    func build<T: Initializable>(type: T.Type, description: String = "\(T.self)", timeout: Double = defaultTimeout) -> T {
        return type.init(element: self, description: description, timeout: timeout)
    }
}
