//
//  RestaurantScreen.swift
//  orderMe
//
//  Created by Nana Yaw on 4/9/25.
//  Copyright © 2025 Boris Gurtovoy. All rights reserved.
//

import XCTest

enum RestaurantOption {
    case detectTable
    case callAWaiter
    case callRestaurant
    
}
    
class RestaurantScreen : BaseScreen, BackProtocol {
    private lazy var callAlert: StaticText = element.staticTexts["Call Republique"].build()
    
    private lazy var callRestOption: Cell = element.collectionViews.cells.element(boundBy: 4).build()
    private lazy var detectTableOption: Cell = element.collectionViews.cells.element(boundBy: 0).build()
    private lazy var callAWaiterOption: Cell = element.collectionViews.cells.element(boundBy: 3).build()
}
    
//MARK: - Activities
    
extension RestaurantScreen {
    @discardableResult
        func callRestaurant() -> Self {
            callRestOption.element.tap()
            return self
        }
        
    @discardableResult
    func choose(option: RestaurantOption) -> Self{
        switch option {
        case .detectTable:
            detectTableOption.element.tap()
        case .callAWaiter:
            callAWaiterOption.element.tap()
        case .callRestaurant:
            callRestaurant()
            }
            return self
        }
        
    }
    
    //MARK: Verifications
    
extension RestaurantScreen {
        @discardableResult
        func assertCallAlertIsPresent() -> Self {
            callAlert.assert(state: .exist)
            return self
        }
    }

