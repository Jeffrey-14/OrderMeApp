//
//  MyReservationScreen.swift
//  orderMe
//
//  Created by Nana Yaw on 4/12/25.
//  Copyright © 2025 Boris Gurtovoy. All rights reserved.
//

import XCTest

class MyReservationsScreen: BaseScreen {
    private lazy var youDidNotLoginAlert: Alert = element.alerts["You did not log in."].build()
}

// MARK - Verification

extension MyReservationsScreen {
    @discardableResult
    func assertYouDidNotLoginAlertIsPresent() -> Self {
        youDidNotLoginAlert.assert(state: .exist )
        return self
    }
}
