//
//  loginScreen.swift
//  orderMe
//
//  Created by Nana Yaw on 4/9/25.
//  Copyright © 2025 Boris Gurtovoy. All rights reserved.
//

import XCTest

class LoginScreen: BaseScreen {
    
    private lazy var loginLaterButton: Button = element.buttons["loginLaterButton"].build()
}

    
// MARK - Activities
extension LoginScreen {
    @discardableResult
    func loginLater() -> Self {
        loginLaterButton.element.tap()
        return self
    }
}
