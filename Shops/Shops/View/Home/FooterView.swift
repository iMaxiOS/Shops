//
//  FooterView.swift
//  Shops
//
//  Created by Maxim Granchenko on 18.01.2021.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10, content: {
            Text("The football helmet is a piece of protective equipment used mainly in gridiron football. It consists of a hard plastic shell with thick padding on the inside.")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundColor(.gray)
                .layoutPriority(0)
            
            Text("Copywrite © iMaxiOS\nAll right reserved")
                .foregroundColor(.gray)
                .font(.footnote)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
        })
        .padding()
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
