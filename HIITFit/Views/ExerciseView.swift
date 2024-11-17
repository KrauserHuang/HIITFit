//
//  ExerciseView.swift
//  HIITFit
//
//  Created by Tai Chin Huang on 2024/10/27.
//

import SwiftUI

struct ExerciseView: View {
    
    let timeInterval: TimeInterval = 30
    let index: Int
    var exercise: Exercise {
        Exercise.exercises[index]
    }
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                HeaderView(titleText: exercise.exerciseName)
                    .padding(.bottom)
                VideoPlayerView(name: exercise.videoName)
                    .frame(height: geometry.size.height * 0.45)
                Text(Date().addingTimeInterval(timeInterval), style: .timer)
                    .font(.system(size: geometry.size.height * 0.07))
                Button("Start/Done") {
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
    ExerciseView(index: 0)
}
