//
//  States.swift
//  orderMe
//
//  Created by Nana Yaw on 4/9/25.
//  Copyright © 2025 Boris Gurtovoy. All rights reserved.
//

import XCTest

protocol States: Initializable {
    var exists: Bool { get }
}

enum ElementStateType: String {
    case exist
}

extension States {
    var exists: Bool {
        element.exists
    }
}

extension States {
    @discardableResult
    func assert(state: ElementStateType = .exist, result: Bool = true, message: String? = nil) -> Self? {
        let timeout: TimeInterval = 7
        var conditionMet = false
        
        switch state {
        case .exist:
            conditionMet = element.waitForExistence(timeout: timeout)
        }
        
        XCTAssert(conditionMet, message ?? #"Element: "\#(description)" state: "\#(state.rawValue)" is not equal to: "\#(result)"."#)
        return self
    }
}
