//
//  AddToCardDetailView.swift
//  Shops
//
//  Created by Maxim Granchenko on 01.03.2021.
//

import SwiftUI

struct AddToCardDetailView: View {
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        Button(action: {
            feedBack.impactOccurred()
        }, label: {
            Spacer()
            Text("Add To Card".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        })
        .padding(15)
        .background(
            Color(
                red: shop.selectedProduct?.red ?? sampleProduct.red,
                green: shop.selectedProduct?.green ?? sampleProduct.green,
                blue: shop.selectedProduct?.blue ?? sampleProduct.blue
            )
        )
        .clipShape(Capsule())
    }
}

struct AddToCardDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCardDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
