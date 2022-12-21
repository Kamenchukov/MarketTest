//
//  HomeCoordinator.swift
//  MarketTest
//
//  Created by Константин Каменчуков on 14.12.2022.
//

import UIKit
import XCoordinator

enum HomeRoute:Route {
    case home
    case selectCategory
    case bestSeller
    case filterOptions
}

class HomeCoordinator: NavigationCoordinator<HomeRoute> {
    init() {
        super.init(initialRoute: .home)
    }
    
    override func prepareTransition(for route: HomeRoute) -> NavigationTransition {
        switch route {
        case .home:
            return .push(buildHomeScreen())
        case .selectCategory:
            return .none()
        case .bestSeller:
            return .none()
        case .filterOptions:
            return .none()
        }
    }
    
//     MARK: - Screens
    
    private func buildHomeScreen() -> UIViewController {
        let vm = HomeViewModel(router: unownedRouter)
        let view = HomeScreenView(viewModel: vm)
        return HomeViewController(rootView: view)
    }
    
}
