//
//  SwiftUI_Apple_GuideApp.swift
//  SwiftUI-Apple-Guide
//
//  Created by Karthi Rasu on 07/05/24.
//

import SwiftUI

@main //App's Entry Point
struct SwiftUI_Apple_GuideApp: App {
    @State private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
