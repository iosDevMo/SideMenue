//
//  ContentView.swift
//  SideMenue
//
//  Created by mohamdan on 29/02/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var showMenue = false
    var body: some View {
        NavigationStack {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
            }
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
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
