//
//  ContentView.swift
//  HIITFit
//
//  Created by Tai Chin Huang on 2024/10/26.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedTab = 9
    
    var body: some View {
        TabView(selection: $selectedTab) {
            WelcomeView(selectedTab: $selectedTab)
                .tag(9)
            ForEach(Exercise.exercises.indices, id: \.self) { index in
                ExerciseView(selectedTab: $selectedTab, index: index)
                    .tag(index)
            }
        }
        // 將tabView變成像頁面滑動的特效（附有pageControl）
        // 新增indexDisplayMode來移除pageControl
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
    }
}

#Preview {
    ContentView()
}
