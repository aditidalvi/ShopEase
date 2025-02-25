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
        ScrollView {
            ProductImageView(image: product.image)
                .padding(.bottom, 20)
            VStack(alignment: .leading, spacing: 10) {
                Section(content: {
                    Text(product.title)
                        .font(.title2)
                        .fontWeight(.medium)
                    Text("₹\(product.price.rounded(), specifier: "%.0f")")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundStyle(.green)
                })
                Section(content: {
                    Text(product.description)
                }, header: {
                    Text("Description")
                        .fontWeight(.medium)
                        .font(.system(size: 20))
                })
            }
            .padding()
        }
        Spacer()
    }
}

#Preview {
    ProductCardView(product: ProductDetailsModel(id: 1,
                                                 title: "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops",
                                                 price: 109.95, description: "Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday", category: "men's clothing",
                                                 image: "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg", rating: Rating(rate: 3.9, count: 120)))
}
