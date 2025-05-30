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
    private lazy var facebookLoginButton: Button = element.buttons["facebookLoginButton"].build()
}

extension LoginScreen {
    @discardableResult
    func tapLoginLaterButton(stub: PlacesStub? = nil) -> RestaurantListScreen {
        stub?.start()
        loginLaterButton.tap()
        return RestaurantListScreen()
    }
    
    @discardableResult
    func loginWithStubbedFacebook(authStub: AuthStub, placesStub: PlacesStub) -> Self {
        authStub.start()
        placesStub.start()
        facebookLoginButton.tap()
        return self
    }
}
