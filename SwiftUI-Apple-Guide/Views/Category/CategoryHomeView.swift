//
//  CategoryView.swift
//  SwiftUI-Apple-Guide
//
//  Created by Karthi Rasu on 27/05/24.
//

import SwiftUI

struct CategoryHomeView: View {
    
    @Environment(ModelData.self) var modelData
    @State private var showingProfile = false
    
    var body: some View {
        NavigationSplitView {
            List {
                PageView(pages: modelData.features.map({FeatureCard(landmark: $0)}))
                    .listRowInsets(EdgeInsets())
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: modelData.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
            }
            .navigationTitle("Featured")
            .toolbar(content: {
                Button(action: {
                    showingProfile.toggle()
                }, label: {
                    Label("User profile", systemImage:"person.crop.circle")
                })
            })
            .sheet(isPresented: $showingProfile, content: {
                ProfileHost()
            })
        } detail: {
            Text("Select s Landmark")
        }
        
    }
}

#Preview {
    CategoryHomeView()
        .environment(ModelData())
}
