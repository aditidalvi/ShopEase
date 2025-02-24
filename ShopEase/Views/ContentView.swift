//
//  ContentView.swift
//  ShopEase
//
//  Created by Aditi Dalvi on 23/02/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ShopEaseViewModel()
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.flexible(), spacing: 4),
                                    GridItem(.flexible(), spacing: 4)], spacing: 4,content: {
                    ForEach(viewModel.products, id: \.id, content: { product in
                        ProductCardView(product: product)
                    })
                })
                .background(Color.gray)
            }
        }
    }
}

#Preview {
    ContentView()
}
