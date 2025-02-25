//
//  ProductDetailsModel.swift
//  ShopEase
//
//  Created by Aditi Dalvi on 23/02/25.
//

import Foundation

struct ProductDetailsModel: Codable, Hashable {
    let id: Int
    let title: String
    let price: Double
    let description: String
    let category: String
    let image: String
    let rating: Rating
    
    static func == (lhs: ProductDetailsModel, rhs: ProductDetailsModel) -> Bool {
        return lhs.id == rhs.id
    }
}

struct Rating: Codable, Hashable {
    let rate: Double
    let count: Int
    let id = UUID().uuidString
    
    static func == (lhs: Rating, rhs: Rating) -> Bool {
        return lhs.id == rhs.id
    }
}
