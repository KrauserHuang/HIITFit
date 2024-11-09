//
//  ExerciseView.swift
//  HIITFit
//
//  Created by Tai Chin Huang on 2024/10/27.
//

import SwiftUI

struct ExerciseView: View {
    
    let index: Int
    var exercise: Exercise {
        Exercise.exercises[index]
    }
    
    var body: some View {
        VStack {
            HeaderView(exerciseName: exercise.exerciseName)
                HeaderView(exerciseName: exercise.exerciseName)
                    .padding(.bottom)
                if let url = Bundle.main.url(forResource: exercise.videoName, withExtension: "mp4") {
                    VideoPlayer(player: AVPlayer(url: url))
                        .frame(height: geometry.size.height * 0.45)
                } else {
                    Text("Couldn't find \(exercise.videoName).mp4")
            Text("Video player")
            Text("Timer")
            Text("Start/Done button")
            Text("Rating")
            Text("History button")
        }
    }
}

#Preview {
    ExerciseView(index: 0)
}
