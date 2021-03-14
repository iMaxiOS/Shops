//
//  ContentView.swift
//  Shops
//
//  Created by Maxim Granchenko on 18.01.2021.
//

import SwiftUI

struct ContentView: View {
    //MARK: - Properties
    @EnvironmentObject var shop: Shop
    
    //MARK: - Body
    var body: some View {
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                VStack(spacing: 0) {
                    NavigationBarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(Color.white)
                        .shadow(color: Color.black.opacity(0.05), radius: 4, x: 0, y: 4)
                    
                    ScrollView(.vertical, showsIndicators: false, content: {
                        FeaturedView()
                            .padding(.vertical, 10)
                        
                        CategoryGridView()
                        
                        ProductView(shop: shop)
                        
                        BrandView()
                        
                        FooterView()
                            .padding(.horizontal)
                    })
                }
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            } else {
                ProductDetailView()
            }
        }
        .ignoresSafeArea(.all, edges: .top)
    }
}

//MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Shop())
    }
}
