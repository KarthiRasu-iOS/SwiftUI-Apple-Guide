//
//  LandmarkDetail.swift
//  SwiftUI-Apple-Guide
//
//  Created by Karthi Rasu on 08/05/24.
//

import SwiftUI

struct LandmarkDetail: View {
    
    @Environment(ModelData.self) var modelData
    
    var landmark : LandMark
    
    var landmarkIndex : Int {
        modelData.landMarks.firstIndex(where: ({ $0.id == landmark.id}))!
    }
    
    var body: some View {
        @Bindable var modalData = modelData
        
        ScrollView {
            MapView(coordinate: landmark.locationCoordinates)
                .frame(height: 300)
            
            CircleImage(image: landmark.image)
                .offset(y:-130)
                .padding(.bottom,-130)
            
            VStack(alignment: .leading, content: {
                HStack(content: {
                    Text(landmark.name)
                        .font(.title)
                    FavouriteButton(isSet: $modalData.landMarks[landmarkIndex].isFavorite)
                })
                
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
        .navigationBarTitleDisplayMode(.inline)
    }
}


#Preview {
    let modelData = ModelData()
    return LandmarkDetail(landmark: modelData.landMarks[0])
        .environment(modelData)
}
