//
//  BrandView.swift
//  Shops
//
//  Created by Maxim Granchenko on 15.02.2021.
//

import SwiftUI

struct BrandView: View {
    var body: some View {
        VStack {
            TitleView(title: "Brand")
            
            ScrollView(.horizontal, showsIndicators: false, content: {
                LazyHGrid(rows: HGridLayout, spacing: 15, content: {
                    ForEach(brands) { brand in
                        BrandItemView(brand: brand)
                    }
                })
                .frame(height: 200)
                .padding(.horizontal)
                .padding(.vertical, 4)
            })
        }
    }
}

struct BrandView_Previews: PreviewProvider {
    static var previews: some View {
        BrandView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
