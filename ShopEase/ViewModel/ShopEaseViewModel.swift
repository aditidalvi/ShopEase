//
//  ShopEaseViewModel.swift
//  ShopEase
//
//  Created by Aditi Dalvi on 23/02/25.
//

import Foundation

class ShopEaseViewModel: ObservableObject {
    @Published var products: [ProductDetailsModel] = []
    let title: String = "ShopEase"
    
    init() {
        fetchDetails()
    }
    
    private func fetchDetails() {
        guard let url = URL(string: "https://fakestoreapi.com/products") else {
            assertionFailure("Cannot create the url")
            return
        }
        let request = URLRequest(url: url)
        URLSession.shared.dataTask(with: request) { [weak self] data, response, error in
            guard let data,
                  let response = response as? HTTPURLResponse,
                  response.statusCode == 200,
                  error == nil else {
                assertionFailure("Failure to load the data")
                return
            }
            let products = try? JSONDecoder().decode([ProductDetailsModel].self, from: data)
            DispatchQueue.main.async {
                if let products {
                    self?.products = products
                }
            }
        }.resume()
    }
}
