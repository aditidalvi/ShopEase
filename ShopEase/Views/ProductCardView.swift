//
//  ProductCardView.swift
//  ShopEase
//
//  Created by Aditi Dalvi on 23/02/25.
//

import SwiftUI
import SDWebImageSwiftUI

struct ProductCardView: View {
    let product: ProductDetailsModel
    var body: some View {
        VStack(spacing: 10) {
            WebImage(url: URL(string: product.image))
                .resizable()
                .aspectRatio(contentMode: .fit)
                                .frame(height: 250)
                                .padding()
            // Adjusted size for better grid alignment
                               
            Text(product.title)
                .font(.title2)
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
                .lineLimit(1)
        }
        .padding()
        .background(Color.white)
    }
}

#Preview {
    ProductCardView(product: ProductDetailsModel(id: 1,
                                                 title: "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops",
                                                 price: 109.95, description: "Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday", category: "men's clothing",
                                                 image: "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg", rating: Rating(rate: 3.9, count: 120)))
}
