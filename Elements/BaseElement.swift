//
//  BaseElement.swift
//  orderMe
//
//  Created by Nana Yaw on 4/9/25.
//  Copyright © 2025 Boris Gurtovoy. All rights reserved.
//

import XCTest

class BaseElement: Initializable, States {

    let element: XCUIElement
    let description: String
    let timeout: Double

    required init(element: XCUIElement, description: String? = nil,  timeout: Double? = nil) {
        self.element = element
        self.description = description ?? String(describing: Self.self)
        self.timeout = timeout ?? 7    }
}
