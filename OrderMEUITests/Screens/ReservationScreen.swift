//
//  ReservationScreen.swift
//  orderMe
//
//  Created by Maryna Kalachova on 2025-05-22.
//  Copyright © 2025 Boris Gurtovoy. All rights reserved.
//

import XCTest

import XCTest

enum AmPm: String {
    case amTime = "AM"
    case pmTime = "PM"
}

class ReservationScreen: BaseScreen {
    private lazy var monthDayPicker: PickerWheel = element.pickerWheels.element(boundBy: 0).build()
    private lazy var hourPicker: PickerWheel = element.pickerWheels.element(boundBy: 1).build()
    private lazy var minutePicker: PickerWheel = element.pickerWheels.element(boundBy: 2).build()
    private lazy var amPmPicker: PickerWheel = element.pickerWheels.element(boundBy: 3).build()
    private lazy var phoneNumberRequiredAlert: Alert = element.alerts["We need your phone number"].build()
    private lazy var bookButton: Button = element.staticTexts["Book"].build()
}

// MARK: - Actions

extension ReservationScreen {
    @discardableResult
    func selectDate(month: String, date: String, hour: Int, minute: Int, amPm: AmPm) -> Self {
        guard hour > 0 && hour <= 12 && minute >= 0 && minute < 60 && minute % 5 == 0 else {
            XCTFail("Incorrect date or time is provided")
            return self
        }
        let monthDay = "\(month) \(date.description)"
        monthDayPicker.element.adjust(toPickerWheelValue: monthDay)
        hourPicker.element.adjust(toPickerWheelValue: hour.description)
        minutePicker.element.adjust(toPickerWheelValue: String(format: "%02d", minute))
        amPmPicker.element.adjust(toPickerWheelValue: amPm.rawValue)
        return self
    }
    
    @discardableResult
    func tapBookButton() -> Self {
        bookButton.tap()
        return self
    }
}

// MARK: - Verifications

extension ReservationScreen {
    @discardableResult
    func assertPhoneRequiredAlertIsPresent() -> Self {
        phoneNumberRequiredAlert.assert(state: .exists)
        return self
    }
}
