//
//  Photo.swift
//  SwiftyCats
//
//  Created by Hirad on 2017-08-21.
//  Copyright © 2017 Hirad. All rights reserved.
//

import UIKit
import MapKit

class Photo: NSObject {

    var id: Int
    var name: String
    var lat, lon: Double
    var coardinate: CLLocationCoordinate2D
    
    
    
    override init() {
        id = 1;
        name = "test"
        lat = 100.0
        lon = 100.0
        coardinate = CLLocationCoordinate2D (latitude: lat, longitude: lon)
        
    }
}


