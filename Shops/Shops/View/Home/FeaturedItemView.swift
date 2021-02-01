//
//  FeaturedItemView.swift
//  Shops
//
//  Created by Maxim Granchenko on 30.01.2021.
//

import SwiftUI

struct FeaturedItemView: View {
    
    var player: PlayerModel
    
    var body: some View {
        HStack {
            Image(player.image)
                .resizable()
                .scaledToFit()
                .cornerRadius(10)
        }
        .shadow(color: Color(.systemBlue).opacity(0.4), radius: 5, x: -2, y: -2)
        .shadow(color: Color(.systemBlue).opacity(0.8), radius: 5, x: 3, y: 3)
    }
}

struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(player: players[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
