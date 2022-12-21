//
//  FavoriteItemsCoordinator.swift
//  MarketTest
//
//  Created by Константин Каменчуков on 14.12.2022.
//

import UIKit
import XCoordinator

enum FavoriteItemsRoute: Route {
    case favoriteItems
}

class FavoriteItemsCoordinator: NavigationCoordinator<FavoriteItemsRoute> {
    init() {
        super.init(initialRoute: .favoriteItems)
    }
    
    override func prepareTransition(for route: FavoriteItemsRoute) -> NavigationTransition {
        switch route {
        case .favoriteItems:
            return .none()
        }
    }
}
