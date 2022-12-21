//
//  ProductDetailsModel.swift
//  MarketTest
//
//  Created by Константин Каменчуков on 15.12.2022.
//

import Foundation

struct ProductDetailsModel: Codable {
    let cpu: String
    let camera: String
    let capacity: [String]
    let color: [String]
    let id: String
    let images: [String]
    let isFavorites: Bool
    let price: Int
    let rating: Double
    let sd: String
    let ssd: String
    let title: String
}
