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
}

extension RestaurantListScreen {
    @discardableResult
    func tapRepubliqueRestaurant() -> RestaurantScreen {
        republiqueRest.tap()
        return RestaurantScreen()
    }
}

