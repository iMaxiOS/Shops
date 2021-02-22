//
//  NavigationBarDetailView.swift
//  Shops
//
//  Created by Maxim Granchenko on 22.02.2021.
//

import SwiftUI

struct NavigationBarDetailView: View {
    var body: some View {
        HStack {
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "chevron.backward")
            })
            
            Spacer()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "cart")
            })
        }
        .font(.title)
        .foregroundColor(.white)
    }
}

struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
