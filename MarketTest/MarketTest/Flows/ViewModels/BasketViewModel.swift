//
//  BasketViewModel.swift
//  MarketTest
//
//  Created by Константин Каменчуков on 14.12.2022.
//

import Foundation
import SwiftUI
import XCoordinator
import Combine

 class BasketViewModel: ObservableObject {
    private let router: UnownedRouter<BasketRoute>

    init(router: UnownedRouter<BasketRoute>) {
        self.router = router
    }
     
     
     func transition() {
         router.trigger(.deleteItem)
     }
}
