//
//  MainTabBarCoordinator.swift
//  MarketTest
//
//  Created by Константин Каменчуков on 14.12.2022.
//

import UIKit
import XCoordinator

enum TabBarRoute: Route {
    case home
    case basket
    case favoriteStuff
    case profile
}

class MainTabBarCoordinator: TabBarCoordinator<TabBarRoute> {
    private let homeRouter: StrongRouter<HomeRoute>
    private let basketRoute: StrongRouter<BasketRoute>
    private let favoriteRoute: StrongRouter<FavoriteItemsRoute>
    private let profileRoute: StrongRouter<ProfileRoute>
    
    
    convenience init() {
        let homeCoordinator = HomeCoordinator()
        homeCoordinator.rootViewController.tabBarItem = UITabBarItem(title: "Explorer", image: UIImage(systemName: "circle.fill"), tag: 0)
        
        let basketCoordinator = BasketCoordinator()
        basketCoordinator.rootViewController.tabBarItem = UITabBarItem(title: "", image: UIImage(systemName: "handbag"), tag: 1)
        
        let favoriteitemssCoordinator = FavoriteItemsCoordinator()
        favoriteitemssCoordinator.rootViewController.tabBarItem = UITabBarItem(title: "", image: UIImage(systemName: "heart"), tag: 2)
        
        let profileCoordinator = ProfileCoordinator()
        profileCoordinator.rootViewController.tabBarItem = UITabBarItem(title: "", image: UIImage(systemName: "person"), tag: 3)
        
        self.init(
            homeRouter: homeCoordinator.strongRouter,
            basketRoute: basketCoordinator.strongRouter,
            favoriteRoute: favoriteitemssCoordinator.strongRouter,
            profileRoute: profileCoordinator.strongRouter
        )
    }
    
    init (
        homeRouter: StrongRouter<HomeRoute>,
        basketRoute: StrongRouter<BasketRoute>,
        favoriteRoute: StrongRouter<FavoriteItemsRoute>,
        profileRoute: StrongRouter<ProfileRoute>
    ) {
        self.homeRouter = homeRouter
        self.basketRoute = basketRoute
        self.favoriteRoute = favoriteRoute
        self.profileRoute = profileRoute
        super.init(tabs: [homeRouter, basketRoute, favoriteRoute, profileRoute], select: homeRouter)
    }
    
    override func prepareTransition(for route: TabBarRoute) -> TabBarTransition {
        switch route {
        case .home:
            return .none()
        case .basket:
            return .none()
        case .favoriteStuff:
            return .none()
        case .profile:
            return .none()
        }
    }
    
}
