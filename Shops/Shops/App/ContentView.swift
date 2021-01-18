//
//  ContentView.swift
//  Shops
//
//  Created by Maxim Granchenko on 18.01.2021.
//

import SwiftUI

struct ContentView: View {
    //MARK: - properties
    
    //MARK: - body
    var body: some View {
        FooterView()
            .padding(.horizontal)
    }
}

//MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
