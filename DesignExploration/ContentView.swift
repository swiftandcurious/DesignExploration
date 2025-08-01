//
//  ContentView.swift
//  DesignExploration
//
//  Created by swiftandcurious on 8/1/25.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab: String = "home"
    
    var body: some View {
        
        TabView(selection: $selectedTab) {
            
            Tab("Home", systemImage: "house", value: "home") {
                HomeView()
            }
            
            Tab("Profile", systemImage: "person", value: "profile") {
                ProfileView()
            }
            
            Tab("List", systemImage: "list.bullet", value: "list") {
                ListView()
            }
            
            Tab(value: "search", role: .search) {
                SearchView()
            }

        }
        .searchToolbarBehavior(.minimize)
        .tabBarMinimizeBehavior(.onScrollDown)
        .tabViewBottomAccessory {
            MiniPlayerView()
                .padding()
        }
    }
}

#Preview {
    ContentView()
}
