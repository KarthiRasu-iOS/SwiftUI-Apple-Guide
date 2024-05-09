//
//  LandmarkList.swift
//  SwiftUI-Apple-Guide
//
//  Created by Karthi Rasu on 08/05/24.
//

import SwiftUI

struct LandmarkList: View {
    
    @Environment(ModelData.self) var modelData
    
    @State private var showFavouritesOnly = false
    
    var filterdLandmarks : [LandMark] {
        modelData.landMarks.filter { landmark in
            (!showFavouritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationSplitView {
            
            List {
                Toggle(isOn: $showFavouritesOnly, label: {
                    Text("Favourites Only")
                })
                
                ForEach(filterdLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .animation(.default, value: filterdLandmarks)
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkList()
}
