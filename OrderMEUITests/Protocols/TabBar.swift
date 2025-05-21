//
//  TabBar.swift
//  orderMe
//
//  Created by Maryna Kalachova on 2025-05-16.
//  Copyright © 2025 Boris Gurtovoy. All rights reserved.
//

import XCTest

protocol TabBar {
    func tapMyReservations() -> Self
    func tapHome() -> Self
    func tapMyOrders() -> Self
}

extension TabBar {
    var myOrdersButton: Button {
        get {
            return XCUIApplication().tabBars["Tab Bar"].buttons["My orders"].build()
        }
    }
    
    var homeButton: Button {
        get {
            return XCUIApplication().tabBars["Tab Bar"].buttons["Home"].build()
        }
    }
    
    var myReservationsButton: Button {
        get {
            return XCUIApplication().tabBars["Tab Bar"].buttons["My reservations"].build()
        }
    }
    
    @discardableResult
    func tapMyOrders() -> Self {
        myOrdersButton.tap()
        return self
    }
    
    @discardableResult
    func tapHome() -> Self {
        homeButton.tap()
        return self
    }
    
    @discardableResult
    func tapMyReservations() -> Self {
        myReservationsButton.tap()
        return self
    }
}
