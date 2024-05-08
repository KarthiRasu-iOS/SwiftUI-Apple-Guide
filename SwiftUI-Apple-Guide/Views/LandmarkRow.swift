//
//  LandmarkRow.swift
//  SwiftUI-Apple-Guide
//
//  Created by Karthi Rasu on 07/05/24.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark : LandMark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50,height: 50)
            Text(landmark.name)
            Spacer()
        }
    }
}

#Preview {
    LandmarkRow(landmark: landMarks[0])
}
