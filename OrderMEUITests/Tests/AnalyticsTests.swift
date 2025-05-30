//
//  AnalyticsTests.swift
//  orderMe
//
//  Created by Maryna Kalachova on 2025-05-29.
//  Copyright © 2025 Boris Gurtovoy. All rights reserved.
//

import XCTest
import SBTUITestTunnelClient

class AnalyticsTests: BaseTest, Analytics {
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        AnalyticsStub.success.start()
        self.app.monitorRequests(matching: SBTRequestMatch(url: ".*"))
    }
    
    func testOpenRepubliqueAnalytics() {
        let loginScreen = LoginScreen()
        let restaurantsListScreen = loginScreen.tapLoginLaterButton(stub: .multiplePlaces)

        assertAnalytics(action: "loginLaterTapped", info: "")
        assertAnalytics(action: "placesListShown", info: "2 places")

        restaurantsListScreen.tapRepubliqueRestaurant()

        assertAnalytics(action: "placeTapped", info: "3")
    }
}
 
