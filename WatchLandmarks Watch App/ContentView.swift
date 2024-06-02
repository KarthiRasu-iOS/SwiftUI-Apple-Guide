//
//  ContentView.swift
//  WatchLandmarks Watch App
//
//  Created by Karthi Rasu on 02/06/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
