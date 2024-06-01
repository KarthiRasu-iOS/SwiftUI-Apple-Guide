//
//  ProfileSummary.swift
//  SwiftUI-Apple-Guide
//
//  Created by Karthi Rasu on 28/05/24.
//

import SwiftUI

struct ProfileSummary: View {
    var profile : ProfileModel
    var body: some View {
        ScrollView {
            VStack(alignment: .leading,spacing: 10,content: {
                Text(profile.username)
                    .bold()
                    .font(.title)
                
                Text("Notifications: \(profile.prefresNotification ? "On" : "Off")")
                Text("Seasonal Photos: \(profile.seasonalPhoto.rawValue)")
                Text("Goal Date: ") + Text(profile.goalDate,style: .date)
                
            })
        }
    }
}

#Preview {
    ProfileSummary(profile: ProfileModel.default)
}
