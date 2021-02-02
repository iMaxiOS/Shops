//
//  NavigationBarView.swift
//  Shops
//
//  Created by Maxim Granchenko on 20.01.2021.
//

import SwiftUI

struct NavigationBarView: View {
    //MARK: - Properties
    @State private var isAnimation = false
    
    //MARK: - Body
    var body: some View {
        HStack {
            Button(action: {}, label: {
                Image(systemName: "magnifyingglass")
                    .renderingMode(.original)
                    .font(.title)
            })
            
            Spacer()
            
            LogoView()
                .opacity(isAnimation ? 1 : 0)
                .offset(x: 0, y: isAnimation ? 0 : -25)
                .onAppear(perform: {
                    withAnimation(.easeOut(duration: 0.5)) {
                        self.isAnimation.toggle()
                    }
                })
            
            Spacer()
            
            ZStack(alignment: Alignment(horizontal: .trailing, vertical: .top), content: {
                Button(action: {}, label: {
                    Image(systemName: "cart")
                        .renderingMode(.original)
                        .font(.title)
                })
                
                Circle().fill(Color.red)
                    .frame(width: 13, height: 13)
            })
        }
    }
}

//MARK: - Preview
struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
