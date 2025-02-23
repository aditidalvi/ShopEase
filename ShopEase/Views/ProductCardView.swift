//
//  ProductCardView.swift
//  ShopEase
//
//  Created by Aditi Dalvi on 23/02/25.
//

import SwiftUI

struct ProductCardView: View {
    let product: ProductDetailsModel
    var body: some View {
        VStack(spacing: 10) {
            AsyncImage(url: URL(string: product.image), scale: 5.0)
            Text(product.title)
                .font(.title2)
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    ProductCardView(product: ProductDetailsModel(id: 1,
                                                 title: "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops",
                                                 price: 109.95, description: "Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday", category: "men's clothing",
                                                 image: "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg", rating: Rating(rate: 3.9, count: 120)))
}
