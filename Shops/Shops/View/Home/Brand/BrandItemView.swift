//
//  BrandItemView.swift
//  Shops
//
//  Created by Maxim Granchenko on 15.02.2021.
//

import SwiftUI

struct BrandItemView: View {

    var brand: Brand

    var body: some View {
        Button(action: {}, label: {
            Image(brand.image)
                .resizable()
                .scaledToFit()
                .padding()
        })
        .background(Color.white.cornerRadius(12))
        .background(RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: 1))
    }
}

struct BrandItemView_Previews: PreviewProvider {
    static var previews: some View {
        BrandItemView(brand: brands[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
