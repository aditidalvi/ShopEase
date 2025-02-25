//
//  ProductImageView.swift
//  ShopEase
//
//  Created by Aditi Dalvi on 25/02/25.
//

import SwiftUI
import SDWebImageSwiftUI

struct ProductImageView: View {
    let image: String
    var body: some View {
        WebImage(url: URL(string: image))
            .resizable()
            .aspectRatio(contentMode: .fit)
                            .frame(height: 250) // Adjusted size for better grid alignment
                            .padding()
    }
}

#Preview {
    ProductImageView(image: "https://picsum.photos/200")
}
