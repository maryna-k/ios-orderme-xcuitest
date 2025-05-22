//
//  Date.swift
//  orderMe
//
//  Created by Maryna Kalachova on 2025-05-22.
//  Copyright © 2025 Boris Gurtovoy. All rights reserved.
//

import XCTest

extension Date {
    typealias UIDate = (date: String, month: String)
    
    func getUIDateForTodayPlus(daysNum: Int) -> UIDate? {
        var components = DateComponents()
        components.setValue(daysNum, for: .day)
        
        guard let futureDate = Calendar.current.date(byAdding: components, to: self) else {
            return nil
        }
        
        let futureDay = Calendar.current.component(.day, from: futureDate).description
        let futureMonthInt = Calendar.current.component(.month, from: futureDate)
        let futureMonth = DateFormatter().shortMonthSymbols[futureMonthInt - 1]
        
        return (futureDay, futureMonth)
    }
}
