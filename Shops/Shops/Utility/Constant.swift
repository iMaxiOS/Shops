//
//  Constant.swift
//  Shops
//
//  Created by Maxim Granchenko on 18.01.2021.
//

import SwiftUI

let players: [PlayerModel] = Bundle.main.codable("player.json")
let categories: [Category] = Bundle.main.codable("category.json")

let colorBackground: Color = Color("colorBackground")
let colorGray: Color = Color(UIColor.systemGray4)

let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}
