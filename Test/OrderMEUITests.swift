//
//  OrderMEUITests.swift
//  OrderMEUITests
//
//  Created by Igor Dorovskikh on 2/9/21.
//  Copyright © 2021 Boris Gurtovoy. All rights reserved.
//

import XCTest

class OrderMEUITests: BaseTest {
    

    func testBringAMenu() {
        LoginScreen()
            .loginLater()
        
        RestaurantsListScreen()
            .openRepubliqueRestaurant()
        
        RestaurantScreen()
            .choose(option: .detectTable)
        
        DetectTableScreen()
            .selectTable(number: 7)
        
        RestaurantScreen()
            .choose(option: .callAWaiter)
        
        WaiterScreen()
            .choose(option: .bringAMenu)
            .assertGotItAlertIsPresent()
    }
    
    func testCallRestaurant() {
        LoginScreen()
            .loginLater()
        
        RestaurantsListScreen()
            .openRepubliqueRestaurant()
        
        RestaurantScreen()
            .choose(option: .callRestaurant)
            .assertCallAlertIsPresent()
    }
    
    func testVerifyMyReservationTabIsRestricted() {
        LoginScreen()
            .loginLater()
        RestaurantsListScreen()
            .tapMyReservations()
        MyReservationsScreen()
            .assertYouDidNotLoginAlertIsPresent()
    }
    
    func testVerifyBackNavigationFromRestaurantScreen() {
        LoginScreen()
            .loginLater()
        RestaurantsListScreen()
            .openRepubliqueRestaurant()
        RestaurantScreen()
            .backTo(screen: RestaurantScreen.self)
    }

}
