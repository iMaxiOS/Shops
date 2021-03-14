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
            Image(product.image)
                .resizable()
                .scaledToFill()
                .background(Color(red: product.red, green: product.green, blue: product.blue, opacity: 1))
                .cornerRadius(15)
            
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(Color.gray)
        }
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products[1])
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
