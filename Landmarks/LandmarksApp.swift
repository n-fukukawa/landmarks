//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Naruki Fukukawa on 2025/01/26.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
