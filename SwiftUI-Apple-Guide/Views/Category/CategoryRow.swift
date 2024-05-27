//
//  CategoryRow.swift
//  SwiftUI-Apple-Guide
//
//  Created by Karthi Rasu on 27/05/24.
//

import SwiftUI

struct CategoryRow: View {
    
    var categoryName : String
    var items : [LandMark]
    
    var body: some View {
        VStack(alignment: .leading, content: {
            Text(categoryName)
                .font(.headline)
                .padding(.leading,15)
                .padding(.top,5)
            
            ScrollView(.horizontal,showsIndicators: false) {
                HStack(alignment: .top,spacing: 0, content: {
                    ForEach(items) { landmark in
                        NavigationLink {
                            LandmarkDetail(landmark: landmark)
                        } label: {
                            CategoryItem(landmark: landmark)
                        }
                    }
                })
            }
            .frame(height: 185)
        })
    }
}

#Preview {
    let landmarks = ModelData().landMarks
    return CategoryRow(categoryName: landmarks[0].name, items: landmarks)
}
