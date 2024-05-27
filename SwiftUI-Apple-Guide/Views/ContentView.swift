//
//  ContentView.swift
//  SwiftUI-Apple-Guide
//
//  Created by Karthi Rasu on 27/05/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection : Tab = .featured
    enum Tab {
        case featured
        case list
    }
    
    var body: some View {
        TabView(selection: $selection,
                content:  {
            CategoryHomeView()
                .tabItem { Label("Featured", systemImage: "star") }
                .tag(Tab.featured)
            LandmarkList()
                .tag(Tab.list)
                .tabItem { Label("List", systemImage: "list.bullet") }
        })
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
