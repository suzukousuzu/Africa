//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by 鈴木航太 on 2024/02/14.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        // l.locate json file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to lacate\(file) in bundle")
        }
        // 2.create property
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle")
        }
        
    
        // 3.デコーダーを作成する
        let decorder = JSONDecoder()
        // 4プロパティをデコードデータで作成する
        
        guard let loaded = try? decorder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle")
        }
        //5.使えるデータで返す
        return loaded;
    }
}
