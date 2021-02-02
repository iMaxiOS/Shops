//
//  ProductItemView.swift
//  Shops
//
//  Created by Maxim Granchenko on 02.02.2021.
//

import SwiftUI

struct ProductItemView: View {
    
    var product: Product
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Button(action: {}, label: {
                Image(product.image)
                    .resizable()
                    .scaledToFill()
                    .background(Color.blue.opacity(0.5))
                    .cornerRadius(15)
            })
            
            Text(product.name)
                .font(.title3)
                .fontWeight(.bold)
            
            Text("$\(product.price.description)")
                .font(.callout)
                .fontWeight(.medium)
                .foregroundColor(Color.gray)
            
        }
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products[0])
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
