//
//  HomeModel.swift
//  MarketTest
//
//  Created by Константин Каменчуков on 14.12.2022.
//

import Foundation

struct HomeModel: Codable {
    let homeStore: [HomeStore]
    let bestSeller: [BestSeller]
    
    enum CodingKeys: String, CodingKey {

        case homeStore  = "home_store"
        case bestSeller = "best_seller"
      
      }
}

struct HomeStore: Codable {
    let id: Int
    let isNew: Bool?
    let title: String
    let subtitle: String
    let picture: String
    let isBuy: Bool
    
    enum CodingKeys: String, CodingKey {
        case id
        case isNew = "is_new"
        case title
        case subtitle
        case picture
        case isBuy = "is_buy"
    }
}

struct BestSeller: Codable {
    let id: Int
    let isFavorites: Bool
    let title: String
    let priceWithoutDiscount: Int
    let discountPrice: Int
    let picture: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case isFavorites = "is_favorites"
        case title
        case priceWithoutDiscount = "price_without_discount"
        case discountPrice = "discount_price"
        case picture
    }
}
