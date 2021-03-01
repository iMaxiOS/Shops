//
//  AddToCardDetailView.swift
//  Shops
//
//  Created by Maxim Granchenko on 01.03.2021.
//

import SwiftUI

struct AddToCardDetailView: View {
    var body: some View {
        Button(action: {}, label: {
            Spacer()
            Text("Add To Card".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        })
        .padding(15)
        .background(
            Color(red: sampleProduct.red, green: sampleProduct.green, blue: sampleProduct.blue)
        )
        .clipShape(Capsule())
    }
}

struct AddToCardDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCardDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
