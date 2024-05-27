//
//  CategoryItem.swift
//  SwiftUI-Apple-Guide
//
//  Created by Karthi Rasu on 27/05/24.
//

import SwiftUI

struct CategoryItem: View {
    
    var landmark : LandMark
    
    var body: some View {
        VStack(alignment: .leading, content: {
            landmark.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 155,height: 155)
                .cornerRadius(5)
            Text(landmark.name)
                .foregroundStyle(.primary)
                .font(.caption)
        })
        .padding(.leading,15)
    }
}

#Preview {
    CategoryItem(landmark: ModelData().landMarks[0])
}
