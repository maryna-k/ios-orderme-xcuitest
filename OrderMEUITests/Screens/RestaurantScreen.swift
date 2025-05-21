//
//  RestaurantScreen.swift
//  orderMe
//
//  Created by Maryna Kalachova on 2025-05-13.
//  Copyright © 2025 Boris Gurtovoy. All rights reserved.
//

import XCTest

enum Options {
    case detectTable
    case callWaiter
    case callRestaurant
}

class RestaurantScreen: BaseScreen, BackProtocol {
    private lazy var detectTableOption: Cell = element.collectionViews.firstMatch.cells.element(boundBy: 0).build()
    private lazy var callAWaiterOption: StaticText = element.collectionViews.firstMatch.cells.element(boundBy: 3).build()
    private lazy var callRestaurantOption: StaticText = element.collectionViews.firstMatch.cells.element(boundBy: 4).build()
    private lazy var tableNumberField: TextField = element.textFields["tableNumberTextField"].build()
    private lazy var selectTableButton: Button = element.buttons["Select table"].build()
    private lazy var waiterAlert: Alert = element.alerts["The waiter is on his way"].build()
    private lazy var bringAMenuButton: Alert = element.alerts["The waiter is on his way"].buttons["Bring a menu"].build()
    lazy var gotItAlert: Alert = element.alerts["Got it!"].build()
    private lazy var callAlert: Alert = element.alerts["Call Republique"].build()
}

// MARK: - Activities

extension RestaurantScreen {
    @discardableResult
    func choose(option: Options) -> Self {
        switch option {
        case .detectTable:
            detectTableOption.tap()
        case .callWaiter:
            callAWaiterOption.tap()
        case .callRestaurant:
            callRestaurantOption.tap()
        }
        return self
    }
    
    @discardableResult
    func enterTableNumberField(number: String) -> Self {
        tableNumberField.element.typeText(number)
        return self
    }
    
    @discardableResult
    func tapTableNumberField() -> Self {
        tableNumberField.tap()
        return self
    }
    
    @discardableResult
    func tapSelectTableButton() -> Self {
        selectTableButton.tap()
        return self
    }
    
    @discardableResult
    func tapBringMenuButton() -> Self {
        bringAMenuButton.tap()
        return self
    }
}

// MARK: - Verifications

extension RestaurantScreen {
    @discardableResult
    func assertGotItAlertIsPresent() -> Self {
        gotItAlert.assert(state: .exists)
        return self
    }
    
    @discardableResult
    func assertCallAlertIsPresent() -> Self {
        callAlert.assert(state: .exists)
        return self
    }
}
