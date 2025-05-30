//
//  OrderMEUITests.swift
//  OrderMEUITests
//
//  Created by Maryna Kalachova on 2025-05-13.
//  Copyright © 2025 Boris Gurtovoy. All rights reserved.
//

import XCTest

class OrderMEUITests: BaseTest {

    func testBringAMenu() {
        LoginScreen()
            .tapLoginLaterButton()
        
        RestaurantListScreen()
            .tapRepubliqueRestaurant()
        
        RestaurantScreen()
            .choose(option: .detectTable)
            .tapTableNumberField()
            .enterTableNumberField(number: "3")
            .tapSelectTableButton()
            .choose(option: .callWaiter)
            .tapBringMenuButton()
            .assertGotItAlertIsPresent()
    }
        
    func testCallRestaurant() {
        LoginScreen()
            .loginWithStubbedFacebook(authStub: .success, placesStub: .multiplePlaces)

        RestaurantListScreen()
            .tapRepubliqueRestaurant()
        
        RestaurantScreen()
            .choose(option: .callRestaurant)
            .assertCallAlertIsPresent()
    }
    
    func testVerifyMyOrdersTabRequiresLogin() {
        LoginScreen()
            .tapLoginLaterButton()
        
        RestaurantListScreen()
            .tapMyOrders()
        
        MyOrdersScreen()
            .assertYouDidNotLoginAlertIsPresent()
    }
    
    func testVerifyBacknavigationFromRestaurantScreen() {
        LoginScreen()
            .tapLoginLaterButton()

        RestaurantListScreen()
            .tapRepubliqueRestaurant()
        
        RestaurantScreen()
            .backTo(screen: RestaurantScreen())
    }
}
