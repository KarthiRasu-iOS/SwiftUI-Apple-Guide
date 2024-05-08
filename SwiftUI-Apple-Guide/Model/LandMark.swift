//
//  LandMark.swift
//  SwiftUI-Apple-Guide
//
//  Created by Karthi Rasu on 07/05/24.
//

import Foundation
import SwiftUI
import CoreLocation

struct LandMark : Hashable , Codable , Identifiable {
    var id : Int
    var name : String
    var park : String
    var state : String
    var description : String
    
    private var imageName : String
    
    var image : Image {
        Image(imageName)
    }
    
    private var coordinates : Coordinates
    
    struct Coordinates : Hashable , Codable {
        var latitude : Double
        var longitude : Double
    }
    
    var locationCoordinates : CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude,
                               longitude: coordinates.longitude)
    }
}
