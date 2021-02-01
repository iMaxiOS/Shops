//
//  CodableBundleExt.swift
//  Shops
//
//  Created by Maxim Granchenko on 30.01.2021.
//

import Foundation

extension Bundle {
    func codable<T: Codable>(_ file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Faileded to local \(file) in bundle.")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Faileded to \(file) from bundle.")
        }
        
        let decoder = JSONDecoder()
        
        guard let decodeData = try? decoder.decode(T.self, from: data) else {
            fatalError("Faileded to decode \(file) from bundle.")
        }
        
        return decodeData
    }
}
