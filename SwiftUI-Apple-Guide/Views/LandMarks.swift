//
//  LandMarks.swift
//  SwiftUI-Apple-Guide
//
//  Created by Karthi Rasu on 07/05/24.
//

import SwiftUI

struct LandMarks: View {
    var body: some View {
        VStack {
            MapView(coordinate: landMarks[0].locationCoordinates)
                .frame(height: 300)
            
            CircleImage(image: landMarks[0].image)
                .offset(y:-130)
                .padding(.bottom,-130)
            
            VStack(alignment: .leading, content: {
                
                Text("Turtle Rock")
                    .font(.title)
                
                HStack{
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("California")
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                Divider()
                
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Decriptive Text goes here")
            })
            .padding()
            
            Spacer()
        }
    }
}

#Preview {
    LandMarks()
}
