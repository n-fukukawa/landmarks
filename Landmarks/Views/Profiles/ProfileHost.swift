//
//  ProfileHost.swift
//  Landmarks
//
//  Created by Naruki Fukukawa on 2025/01/27.
//

import SwiftUI

struct ProfileHost: View {
    @Environment(\.editMode) var editMode
    @Environment(ModelData.self) var modelData
    @State private var draftProfile = Profile.default
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                if editMode?.wrappedValue == .active {
                    Button("Cancel", role: .cancel) {
                        print(modelData.profile)
                        draftProfile = modelData.profile
                        editMode?.animation().wrappedValue = .inactive
                    }
                }
                
                Spacer()
                EditButton()
            }
            
            if editMode?.wrappedValue == .inactive {
                ProfileSummary(profile: modelData.profile)
            } else {
                ProfileEditor(profile: $draftProfile)
                    .onAppear {
                        draftProfile = modelData.profile
                        print("onAppear")
                    }
                    .onDisappear {
                        modelData.profile = draftProfile
                        print("onDisappear")
                    }
            }
            
        }
        .padding()
    }
}

#Preview {
    ProfileHost()
        .environment(ModelData())
}
