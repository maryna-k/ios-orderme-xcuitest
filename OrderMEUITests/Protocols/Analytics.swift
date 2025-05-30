//
//  Analytics.swift
//  orderMe
//
//  Created by Maryna Kalachova on 2025-05-30.
//  Copyright © 2025 Boris Gurtovoy. All rights reserved.
//

import XCTest
import SBTUITestTunnelClient

protocol Analytics {
    func assertAnalytics(action: String, info: String)
}

extension Analytics where Self: BaseTest {
    func assertAnalytics(action: String, info: String) {
        let analytics = app.monitoredRequestsPeekAll()
            // get only analytics requests
            .filter { $0.originalRequest?.url?.absoluteString.contains("analytics") ?? false }
            // get analytics JSON
            .compactMap { $0.requestJSON() as? [String: String] }
            // filter by action
            .filter { $0["action"] == action }

        guard analytics.count != 0 else {
            XCTFail("Analytics event with action \(action) was not fired")
            return
        }

        guard analytics.count == 1, let analyticsEvent = analytics.first else {
            XCTFail("Analytics event with action \(action) was fired \(analytics.count) times")
            return
        }

        guard analyticsEvent["info"] == info else {
            XCTFail("Analytics event info \(analyticsEvent["info"] ?? "") does not match \(info)")
            return
        }
    }
}
