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
    var isFavorite : Bool
    
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
    
    var category : Category
    
    enum Category : String, CaseIterable, Codable {
        case lakes = "Lakes"
        case rivers = "Rivers"
        case mountains = "Mountains"
    }
    
    var isFeatured : Bool
    
    var featureImage : Image? {
        return isFeatured ? Image(imageName + "_feature") : nil
    }
}
