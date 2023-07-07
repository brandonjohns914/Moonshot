//
//  Bundle-Decodable.swift
//  Moonshot
//
//  Created by Brandon Johns on 6/29/23.
//

import Foundation

extension Bundle {
    
    func decode<T: Codable>(_ file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("We failed to locate that \(file) in bundle")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("We failed to locate that \(file) in bundle")
        }
    
        
        let decoder = JSONDecoder()
        
        let formatter = DateFormatter()
        
        formatter.dateFormat = "y-MM-dd"
        decoder.dateDecodingStrategy = .formatted(formatter)
        
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("We failed to locate that \(file) in bundle")
        }
        
        return loaded
        
        
    }
    
    
    
}
