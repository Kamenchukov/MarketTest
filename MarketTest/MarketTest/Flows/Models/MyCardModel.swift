//
//  MyCardModel.swift
//  MarketTest
//
//  Created by Константин Каменчуков on 15.12.2022.
//

import Foundation

struct MyCardModel: Codable {
    let basket: [BasketGoods]
    let delivary: String
    let id: String
}

struct BasketGoods: Codable {
    let id: Int
    let images: String
    let price: Int
    let title: String
}
