//
//  LoginScreen.swift
//  orderMe
//
//  Created by Maryna Kalachova on 2025-05-13.
//  Copyright © 2025 Boris Gurtovoy. All rights reserved.
//

import XCTest

class LoginScreen: BaseScreen {
    private lazy var loginLaterButton: Button = element.buttons["loginLaterButton"].build()
}

extension LoginScreen {
    @discardableResult
    func tapLoginLaterButton() -> RestaurantListScreen {
        loginLaterButton.tap()
        return RestaurantListScreen()
    }
}
