//
//  ProductDetailsViewModel.swift
//  MarketTest
//
//  Created by Константин Каменчуков on 14.12.2022.
//

import Foundation
import SwiftUI
import XCoordinator
import Combine

 class ProductDetailsViewModel: ObservableObject {
    private let router: UnownedRouter<ProductDetailsRoute>

    init(router: UnownedRouter<ProductDetailsRoute>) {
        self.router = router
    }
     
     
     func transition() {
         router.trigger(.addInBasket)
     }
}
