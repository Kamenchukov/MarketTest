//
//  HomeViewModel.swift
//  MarketTest
//
//  Created by Константин Каменчуков on 14.12.2022.
//
import Foundation
import SwiftUI
import XCoordinator
import Combine

 class HomeViewModel: ObservableObject {
    private let router: UnownedRouter<HomeRoute>

    init(router: UnownedRouter<HomeRoute>) {
        self.router = router
    }
     
     
     func transition() {
         router.trigger(.filterOptions)
     }
}
