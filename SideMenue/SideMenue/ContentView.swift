//
//  ContentView.swift
//  SideMenue
//
//  Created by mohamdan on 29/02/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var showMenue = false
    @State private var selectedTab = 0
    var body: some View {
        NavigationStack {
            ZStack {
                TabView(selection: $selectedTab){
                    Text("Dashboard")
                        .tag(0)
                    Text("Performance")
                        .tag(1)
                    Text("Profile")
                        .tag(2)
                    Text("Searche")
                        .tag(3)
                    Text("Notification")
                        .tag(4)
                }
                
                SideMenueView(isShowing: $showMenue, selectedTab: $selectedTab)
            }
            .toolbar(showMenue ? .hidden : .visible, for: .navigationBar)
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar(content: {
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: {
                        showMenue.toggle()
                    }, label: {
                        Image(systemName: "line.3.horizontal")
                    })
                }
            })
        }
    }
}

#Preview {
    ContentView()
}
