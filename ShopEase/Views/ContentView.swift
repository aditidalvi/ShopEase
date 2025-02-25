//
//  ContentView.swift
//  ShopEase
//
//  Created by Aditi Dalvi on 23/02/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ShopEaseViewModel()
    @State var navigationPath = [ProductDetailsModel]()
    var body: some View {
        NavigationStack(path: $navigationPath) {
            ScrollView {
                LazyVGrid(columns: [GridItem(.flexible(), spacing: 4),
                                    GridItem(.flexible(), spacing: 4)], spacing: 4,content: {
                    ForEach(viewModel.products, id: \.id, content: { product in
                        ProductImageView(image: product.image)
                            .padding()
                            .background(Color.white)
                            .onTapGesture {
                                navigationPath.append(product)
                            }
                    })
                })
                .background(Color.gray)
                .navigationDestination(for: ProductDetailsModel.self,
                                       destination: { product in
                    ProductCardView(product: product)
                })
            }
            .navigationTitle(viewModel.title)
            .navigationBarTitleDisplayMode(.automatic)
            .navigationDestination(for: ProductDetailsModel.self, destination: { product in
                ProductCardView(product: product)
            })
        }
    }
}

#Preview {
    ContentView()
}
