//
//  ReservationTests.swift
//  orderMe
//
//  Created by Maryna Kalachova on 2025-05-22.
//  Copyright © 2025 Boris Gurtovoy. All rights reserved.
//

import XCTest

class ReservationTests: BaseTest {
    func testPhoneNumberRequiredForReservation() {
        let today = Date()
        guard let futureDate = today.getUIDateForTodayPlus(daysNum: 3) else {
            XCTFail("Unable to create a date")
            return
        }
        let date = futureDate.date
        let month = futureDate.month
        
        LoginScreen()
            .tapLoginLaterButton()

        RestaurantListScreen()
            .tapRepubliqueRestaurant()
        
        RestaurantScreen()
            .choose(option: .makeReservation)
        
        ReservationScreen()
            .selectDate(month: month, date: date, hour: 8, minute: 0, amPm: .pmTime)
            .tapBookButton()
            .assertPhoneRequiredAlertIsPresent()
    }
}
