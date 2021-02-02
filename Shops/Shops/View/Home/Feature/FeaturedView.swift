//
//  FeaturedView.swift
//  Shops
//
//  Created by Maxim Granchenko on 30.01.2021.
//

import SwiftUI

struct FeaturedView: View {
    var body: some View {
        TabView {
            ForEach(players) { player in
                FeaturedItemView(player: player)
                    .padding(.top, 15)
                    .padding(.bottom, 15)
                    .padding(.horizontal, 15)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct FeaturedView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedView()
            .background(Color.gray)
    }
}
