//
//  BaseTest.swift
//  orderMe
//
//  Created by Nana Yaw on 4/9/25.
//  Copyright © 2025 Boris Gurtovoy. All rights reserved.
//

import XCTest

class BaseTest: XCTestCase {
    
    override func setUpWithError() throws {
        continueAfterFailure = false
        let app = XCUIApplication()
        app.launch()
    }
}
