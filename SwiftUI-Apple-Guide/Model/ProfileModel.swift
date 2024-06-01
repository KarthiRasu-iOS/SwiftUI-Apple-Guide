//
//  ProfileModel.swift
//  SwiftUI-Apple-Guide
//
//  Created by Karthi Rasu on 28/05/24.
//

import Foundation


struct ProfileModel {
    var username : String
    var prefresNotification = true
    var goalDate = Date()
    var seasonalPhoto : Season = .summer
    
    static let `default` = ProfileModel(username:"Karthi Rasu")
    
    
    enum Season : String,CaseIterable,Identifiable {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"
        
        var id: String {rawValue}
        
    }
}
