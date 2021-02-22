//
//  TopPartDetailView.swift
//  Shops
//
//  Created by Maxim Granchenko on 22.02.2021.
//

import SwiftUI

struct TopPartDetailView: View {
    
    @State private var isAnimation = false
    
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            VStack(alignment: .leading, spacing: 6, content: {
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            })
            .offset(y: isAnimation ? -50 : -75)
            
            Spacer()
            
            Image(sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimation ? 0 : -35)
        })
        .onAppear {
            withAnimation(.easeOut(duration: 0.75)) {
                isAnimation.toggle()
            }
        }
    }
}

struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
