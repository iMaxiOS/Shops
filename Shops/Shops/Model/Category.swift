//
//  Category.swift
//  Shops
//
//  Created by Maxim Granchenko on 02.02.2021.
//

import Foundation

struct Category: Codable, Identifiable {
    var id: Int
    var name: String
    var image: String
}
