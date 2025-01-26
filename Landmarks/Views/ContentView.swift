//
//  ContentView.swift
//  Landmarks
//
//  Created by Naruki Fukukawa on 2025/01/26.
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
