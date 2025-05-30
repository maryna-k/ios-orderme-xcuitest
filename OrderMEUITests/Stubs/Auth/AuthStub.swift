//
//  AuthStub.swift
//  orderMe
//
//  Created by Maryna Kalachova on 2025-05-23.
//  Copyright © 2025 Boris Gurtovoy. All rights reserved.
//

import SBTUITestTunnelClient

enum AuthStub {
    case success
    
    func start() {
        switch self {
        case .success:
            let request = SBTRequestMatch(url: "/user\\?access_token=UI_TEST_ACCESS_TOKEN", method: "GET")
            let response = SBTStubResponse(fileNamed: "AuthData.json")
            BaseTest.shared.app.stubRequests(matching: request, response: response)
        }
    }
}
