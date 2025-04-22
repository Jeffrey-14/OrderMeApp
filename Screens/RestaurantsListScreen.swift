//
//  RestaurantListScreen.swift
//  orderMe
//
//  Created by Nana Yaw on 4/9/25.
//  Copyright © 2025 Boris Gurtovoy. All rights reserved.
//

import XCTest

class RestaurantsListScreen : BaseScreen, TabBarProtocol {
    
    private lazy var republiqueRest: StaticText = element.staticTexts["Republique"].build()
    
}

// MARK - Activities
extension RestaurantsListScreen {
    @discardableResult
    func openRepubliqueRestaurant() -> Self {
        republiqueRest.element.tap()
        return self
    }
}
