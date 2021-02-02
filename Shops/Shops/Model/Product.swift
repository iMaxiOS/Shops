//
//  Product.swift
//  Shops
//
//  Created by Maxim Granchenko on 02.02.2021.
//

import Foundation

struct Product: Codable, Identifiable {
    var id: Int
    let name: String
    let image: String
    let price: Int
    let description: String
//    let colors: [Double]
}
