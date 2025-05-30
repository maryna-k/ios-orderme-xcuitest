//
//  AnalyticsStub.swift
//  orderMe
//
//  Created by Maryna Kalachova on 2025-05-29.
//  Copyright © 2025 Boris Gurtovoy. All rights reserved.
//

import SBTUITestTunnelClient

enum AnalyticsStub {
    case success
    
    func start() {
        switch self {
        case .success:
            let request = SBTRequestMatch(url: "/analytics", method: "POST")
            let response = SBTStubResponse(response: "")
            BaseTest.shared.app.stubRequests(matching: request, response: response)
        }
    }
}
