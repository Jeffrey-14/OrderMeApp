//
//  Initializer.swift
//  orderMe
//
//  Created by Nana Yaw on 4/9/25.
//  Copyright © 2025 Boris Gurtovoy. All rights reserved.
//

import XCTest

protocol Initializable {
    
    var element: XCUIElement { get }
    var description: String { get }
    var timeout: Double { get }
    
    init(element: XCUIElement, description: String?, timeout: Double?)
}
