//
//  LandmarkDetail.swift
//  SwiftUI-Apple-Guide
//
//  Created by Karthi Rasu on 08/05/24.
//

import SwiftUI

struct LandmarkDetail: View {
    
    var landmark : LandMark
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinates)
                .frame(height: 300)
            
            CircleImage(image: landmark.image)
                .offset(y:-130)
                .padding(.bottom,-130)
            
            VStack(alignment: .leading, content: {
                
                Text(landmark.name)
                    .font(.title)
                
                HStack{
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                Divider()
                
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            })
            .padding()
            
            Spacer()
        }
    }
}

#Preview {
    LandmarkDetail(landmark: landMarks[0])
}
