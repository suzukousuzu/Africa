//
//  AnimalModel.swift
//  Africa
//
//  Created by 鈴木航太 on 2024/02/14.
//

import SwiftUI

struct Animal: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]
}
