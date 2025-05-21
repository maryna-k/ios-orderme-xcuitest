//
//  RestaurantListScreen.swift
//  orderMe
//
//  Created by Maryna Kalachova on 2025-05-13.
//  Copyright © 2025 Boris Gurtovoy. All rights reserved.
//

import XCTest

class RestaurantListScreen: BaseScreen, TabBar {
    private lazy var republiqueRest: StaticText = element.staticTexts["Republique"].build()
    private lazy var allowWhileUsingAppAlert: Alert = Springboard.shared.alerts.firstMatch.buttons["Allow While Using App"].build()
    
    required init(element: XCUIElement = app, description: String? = nil, timeout: Double? = nil) {
        super.init()
        handlelocationAlert()
    }
}

extension RestaurantListScreen {
    @discardableResult
    func tapRepubliqueRestaurant() -> RestaurantScreen {
        republiqueRest.tap()
        return RestaurantScreen()
    }
    
    func isLocationAlertVisible() -> Bool {
        return allowWhileUsingAppAlert.element.waitForExistence(timeout: 2)
    }
    
    @discardableResult
    func handlelocationAlert() -> Self {
        if isLocationAlertVisible() {
            allowWhileUsingAppAlert.tap()
        }
        return self
    }
}

