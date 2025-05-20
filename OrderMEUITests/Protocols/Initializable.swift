//
//  Initializable.swift
//  orderMe
//
//  Created by Maryna Kalachova on 2025-05-14.
//  Copyright © 2025 Boris Gurtovoy. All rights reserved.
//

import XCTest

protocol Initializable {
    var element: XCUIElement {get}
    var description: String {get}
    var timeout: Double {get}
    
    init(element: XCUIElement, description: String?, timeout: Double?)
}

