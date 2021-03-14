//
//  Shop.swift
//  Shops
//
//  Created by Maxim Granchenko on 14.03.2021.
//

import SwiftUI

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
