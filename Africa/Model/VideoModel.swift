//
//  VideoModel.swift
//  Africa
//
//  Created by 鈴木航太 on 2024/02/15.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // Computed Property
    var thumbnail: String {
        "video-\(id)"
    }
}
