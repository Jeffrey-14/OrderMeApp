//
//  BackProtocol.swift
//  orderMe
//
//  Created by Nana Yaw on 4/12/25.
//  Copyright © 2025 Boris Gurtovoy. All rights reserved.
//

import XCTest

protocol BackProtocol {
    @discardableResult
    func backTo<T>(screen: T.Type) -> T where T: BaseScreen
}

extension BackProtocol {
    @discardableResult
    func backTo<T>(screen: T.Type) -> T where T: BaseScreen {
        let backButton = BaseScreen.app.buttons["backButton"]
        backButton.tap()
        return T.init() 
    }
}
