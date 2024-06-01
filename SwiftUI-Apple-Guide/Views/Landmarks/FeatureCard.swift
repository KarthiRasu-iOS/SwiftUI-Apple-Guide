//
//  FeatureCard.swift
//  SwiftUI-Apple-Guide
//
//  Created by Karthi Rasu on 01/06/24.
//

import SwiftUI

struct FeatureCard: View {
    var landmark : LandMark
    
    var body: some View {
        landmark.featureImage?
            .resizable()
            .overlay(content: {
                TextOverlay(landMark: landmark)
            })
    }
}


struct TextOverlay: View {
    var landMark : LandMark
    
    var gradient : LinearGradient {
            
        .linearGradient(colors: [.black.opacity(0.6),.black.opacity(0)], startPoint: .bottom, endPoint: .center)
    }
    
    var body: some View {
        ZStack(alignment:.bottomLeading) {
            gradient
            VStack(alignment:.leading) {
                Text(landMark.name)
                    .font(.title)
                    .bold()
                Text(landMark.park)
            }
            .padding()
        }
        .foregroundStyle(Color.white)
    }
}


#Preview {
    FeatureCard(landmark: ModelData().features[0])
        .aspectRatio(3/2, contentMode: .fit)
}
