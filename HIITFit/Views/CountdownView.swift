//
//  CountdownView.swift
//  HIITFit
//
//  Created by Tai Chin Huang on 2024/11/23.
//

import SwiftUI

struct CountdownView: View {
    
    let date: Date
    @Binding var timeRemaining: Int
    let size: Double
    
    var body: some View {
        Text("\(timeRemaining)")
            .font(.system(size: size, design: .rounded))
            .padding()
            .onChange(of: date) { oldValue, newValue in
                timeRemaining -= 1 // 每次date改變時，timeRemaining就減1，timeRemaining是@Binding，所以會同步更新TimerView的timeRemaining
            }
    }
}

struct TimerView: View {
        
    @State private var timeRemaining = 3
    @Binding var timerDone: Bool // 要用Binding，因為要傳給ExerciseView來判斷是否該enable Done按鈕
    let size: Double
    
    var body: some View {
        TimelineView(
            .animation(
                minimumInterval: 1.0,
                paused: timeRemaining <= 0
            )
        ) { context in
            CountdownView(
                date: context.date,
                timeRemaining: $timeRemaining,
                size: size
            )
            .onChange(of: timeRemaining) { oldValue, newValue in
                if timeRemaining < 1 {
                    timerDone = true // 這是要傳給ExerciseView來判斷是否該enable Done按鈕
                }
            }
        }
    }
}

#Preview {
    TimerView(timerDone: .constant(false), size: 90)
}
