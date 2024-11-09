//
//  ExerciseView.swift
//  HIITFit
//
//  Created by Tai Chin Huang on 2024/10/27.
//

import SwiftUI
import AVKit

struct ExerciseView: View {
    
    let timeInterval: TimeInterval = 30
    let index: Int
    var exercise: Exercise {
        Exercise.exercises[index]
    }
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                HeaderView(exerciseName: exercise.exerciseName)
                    .padding(.bottom)
                if let url = Bundle.main.url(forResource: exercise.videoName, withExtension: "mp4") {
                    VideoPlayer(player: AVPlayer(url: url))
                        .frame(height: geometry.size.height * 0.45)
                } else {
                    Text("Couldn't find \(exercise.videoName).mp4")
                        .foregroundColor(.red)
                }
                Text(Date().addingTimeInterval(timeInterval), style: .timer)
                    .font(.system(size: geometry.size.height * 0.07))
                Button("Start/Done") {
                }
                .font(.title3)
                .padding()
                
                Text("Rating")
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
