//
//  PlacesStub.swift
//  orderMe
//
//  Created by Maryna Kalachova on 2025-05-23.
//  Copyright © 2025 Boris Gurtovoy. All rights reserved.
//

import SBTUITestTunnelClient

enum PlacesStub {
    case multiplePlaces
    
    func start() {
        switch self {
        case .multiplePlaces:
            let request = SBTRequestMatch(url: "/places", method: "GET")
            let response = SBTStubResponse(fileNamed: "PlacesData.json")
            BaseTest.shared.app.stubRequests(matching: request, response: response)
        }
    }
}
