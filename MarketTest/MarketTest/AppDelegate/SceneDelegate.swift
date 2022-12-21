//
//  SceneDelegate.swift
//  MarketTest
//
//  Created by Константин Каменчуков on 10.12.2022.
//

import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    private let mainTabBarCoordonator = MainTabBarCoordinator().strongRouter
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
//        let contentView = ContentView()
//        if let windowScene = scene as? UIWindowScene {
//            let window = UIWindow(windowScene: windowScene)
//            window.rootViewController = UIHostingController(rootView: contentView)
//            self.window = window
//            window.makeKeyAndVisible()
//        }
                guard let windowScene = ( scene as? UIWindowScene ) else { fatalError("No one window scene exist") }
                window = UIWindow(windowScene: windowScene)
                mainTabBarCoordonator.setRoot(for: window!)
                }
    }


