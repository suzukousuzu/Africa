//
//  LocationModel.swift
//  Africa
//
//  Created by 鈴木航太 on 2024/02/16.
//

import Foundation
import MapKit

struct NationalParkLocation: Codable, Identifiable {
    let id: String
    let name: String
    let image: String
    let latitude: Double
    let longitude: Double
    
    // Computed Propaty
    var location: CLLocationCoordinate2D {
        return CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
