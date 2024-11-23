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
            if lastExercise {
                showSuccess.toggle()
            } else {
                selectedTab += 1
            }
        }
    }
    
    @Binding var selectedTab: Int
    @State private var rating = 0
    @State private var showHistory = false
    @State private var showSuccess = false
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
                        .sheet(isPresented: $showSuccess) {
                            SuccessView(selectedTab: $selectedTab)
                                .presentationDetents([.medium, .large])
                        }
                }
                .font(.title3)
                .padding()
                RatingView(rating: $rating)
                    .padding()
                Spacer()
                Button("History") {
                    showHistory.toggle()
                }
                .sheet(isPresented: $showHistory) {
                    HistoryView(showHistory: $showHistory)
                }
                .padding(.bottom)
            }
        }
    }
}

#Preview {
    ExerciseView(selectedTab: .constant(3), index: 3)
}
