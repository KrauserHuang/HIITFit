//
//  ContentView.swift
//  HIITFit
//
//  Created by Tai Chin Huang on 2024/10/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Text("Welcome")
                .tabItem { Text("Welcome") }
            Text("Exercise 1")
                .tabItem { Text("Exercise 1") }
            Text("Exercise 2")
                .tabItem { Text("Exercise 2") }
        }
    }
}

#Preview {
    ContentView()
}
