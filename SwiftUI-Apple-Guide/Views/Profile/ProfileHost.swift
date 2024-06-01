//
//  ProfileHost.swift
//  SwiftUI-Apple-Guide
//
//  Created by Karthi Rasu on 28/05/24.
//

import SwiftUI

struct ProfileHost: View {
    @State private var draftprofile = ProfileModel.default
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20,content: {
            ProfileSummary(profile: draftprofile)
        })
        .padding()
    }
}

#Preview {
    ProfileHost()
}
