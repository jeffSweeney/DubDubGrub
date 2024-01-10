//
//  DDGTabView.swift
//  DubDubGrub
//
//  Created by Jeffrey Sweeney on 1/9/24.
//

import SwiftUI

struct DDGTabView: View {
    var body: some View {
        TabView {
            LocationMapView()
                .tabItem { Label("Map", systemImage: "map") }
            
            LocationListView()
                .tabItem { Label("Locations", systemImage: "building") }
            
            ProfileView()
                .tabItem { Label("Profile", systemImage: "person") }
        }
        .tint(.brandPrimary)
    }
}

#Preview {
    DDGTabView()
}
