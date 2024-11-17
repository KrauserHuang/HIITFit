//
//  ExerciseView.swift
//  HIITFit
//
//  Created by Tai Chin Huang on 2024/10/27.
//

import SwiftUI

struct ExerciseView: View {
    
    var startButton: some View {
        Button("Start Exercise") {}
    }
    
    var doneButton: some View {
        Button("Done") {
            selectedTab = lastExercise ? 9 : selectedTab + 1
        }
    }
    
    @Binding var selectedTab: Int
    let timeInterval: TimeInterval = 30
    let index: Int
    var exercise: Exercise {
        Exercise.exercises[index]
    }
    var lastExercise: Bool {
        index + 1 == Exercise.exercises.count
    }
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                HeaderView(selectedTab: $selectedTab, titleText: exercise.exerciseName)
                    .padding(.bottom)
                VideoPlayerView(name: exercise.videoName)
                    .frame(height: geometry.size.height * 0.45)
                Text(Date().addingTimeInterval(timeInterval), style: .timer)
                    .font(.system(size: geometry.size.height * 0.07))
                HStack(spacing: 150) {
                    startButton
                    doneButton
                }
                .font(.title3)
                .padding()
                RatingView()
                    .padding()
                Spacer()
                Button("History") {
                }
                .padding(.bottom)
            }
        }
    }
}

#Preview {
    ExerciseView(selectedTab: .constant(1), index: 0)
}
