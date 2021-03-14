//
//  ProductView.swift
//  Shops
//
//  Created by Maxim Granchenko on 02.02.2021.
//

import SwiftUI

struct ProductView: View {
    var shop: Shop
    
    var body: some View {
        VStack {
            TitleView(title: "Helmet")
            
            LazyVGrid(columns: gridLayout, spacing: 15, content: {
                ForEach(products) { product in
                    ProductItemView(product: product)
                        .onTapGesture {                        
                            withAnimation(.easeOut) {
                                feedBack.impactOccurred()
                                shop.selectedProduct = product
                                shop.showingProduct = true
                            }
                        }
                }
            })
        }
        .padding(15)
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView(shop: .init())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
