//
//  MyReservationsScreen.swift
//  orderMe
//
//  Created by Maryna Kalachova on 2025-05-16.
//  Copyright © 2025 Boris Gurtovoy. All rights reserved.
//

import XCTest

class MyReservationsScreen: BaseScreen {
    private lazy var youDidNotLoginAlert: Alert = element.alerts["You did not login"].build()
}

// MARK: - Verifications

extension MyReservationsScreen {
    @discardableResult
    func assertYouDidNotLoginAlertIsPresent() -> Self {
        youDidNotLoginAlert.assert()
        return self
    }
}
