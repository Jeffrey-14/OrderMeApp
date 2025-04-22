//
//  BaseScreen.swift
//  orderMe
//
//  Created by Nana Yaw on 4/9/25.
//  Copyright © 2025 Boris Gurtovoy. All rights reserved.
//

import XCTest

class BaseScreen: Initializable {
    static let app = XCUIApplication()
    
    var element: XCUIElement
    var description: String
    var timeout: Double
    
    required init(element: XCUIElement = app, description: String? = nil, timeout: Double? = nil) {
        self.element = element
        self.description = description ?? String(describing: Self.self)
        self.timeout = timeout ?? 7
    }
}
