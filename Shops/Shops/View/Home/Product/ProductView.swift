//
//  ProductView.swift
//  Shops
//
//  Created by Maxim Granchenko on 02.02.2021.
//

import SwiftUI

struct ProductView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Hemlets")
                    .font(.system(size: 28, weight: .bold))
                Spacer()
            }
            LazyVGrid(columns: VGridLayour, alignment: .center, spacing: 15, content: {
                ForEach(products) { product in
                    ProductItemView(product: product)
                }
            })
        }
        .padding([.bottom, .horizontal])
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
