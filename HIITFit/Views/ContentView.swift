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
            ForEach(0..<4) { index in
                ExerciseView(index: index)
            }
        }
        // 將tabView變成像頁面滑動的特效（附有pageControl）
        .tabViewStyle(PageTabViewStyle())
        // 但因為pageControl預設為白色，故需要加上PageIndexViewStyle讓他顯示
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}

#Preview {
    ContentView()
}
