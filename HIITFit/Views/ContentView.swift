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
            WelcomeView()
            ForEach(Exercise.exercises.indices, id: \.self) { index in
                ExerciseView(index: index)
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
