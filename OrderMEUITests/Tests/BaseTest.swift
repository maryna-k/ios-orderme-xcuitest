//
//  BaseTest.swift
//  orderMe
//
//  Created by Maryna Kalachova on 2025-05-13.
//  Copyright © 2025 Boris Gurtovoy. All rights reserved.
//

import XCTest
import SBTUITestTunnelClient

class BaseTest: XCTestCase {
    
    static var shared: BaseTest!
    
    override func setUpWithError() throws {
        BaseTest.shared = self
        continueAfterFailure = false
        app.launchArguments = ["startStubServer", "mockFacebook"]
        app.launchTunnel()
    }
}
