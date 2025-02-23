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
                LazyVGrid(columns: [GridItem()], spacing: 10, content: {
                    ForEach(viewModel.products, id: \.id, content: { product in
                        ProductCardView(product: product)
                            .padding()
                            .background(.white)
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
