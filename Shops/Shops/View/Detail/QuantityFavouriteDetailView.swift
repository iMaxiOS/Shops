//
//  QuantityFavouriteDetailView.swift
//  Shops
//
//  Created by Maxim Granchenko on 01.03.2021.
//

import SwiftUI

struct QuantityFavouriteDetailView: View {
    
    @State private var count = 0
    
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            Button(action: {
                if count > 0 {
                    count -= 1
                }
            }, label: {
                Image(systemName: "minus.circle")
            })
            
            Text(count.description)
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            
            Button(action: {
                if count < 100 {
                    count += 1
                }
            }, label: {
                Image(systemName: "plus.circle")
            })
            
            Spacer()
            
            Button(action: {}, label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            })
        })
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

struct QuantityFavouriteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavouriteDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
