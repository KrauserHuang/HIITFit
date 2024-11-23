//
//  ExerciseView.swift
//  HIITFit
//
//  Created by Tai Chin Huang on 2024/10/27.
//

import SwiftUI

struct ExerciseView: View {
    
    var startButton: some View {
        Button("Start Exercise") {
            showTimer.toggle()
        }
    }
    
    var doneButton: some View {
        Button("Done") {
            history.addDoneExercise(exercise.exerciseName)
            // doneButton要能點擊時timerDone為true，所以在點擊doneButton則要重置timerDone為false(disable doneButton)
            // showTimer當下狀態為true，所以要重置為false(隱藏TimerView)
            timerDone = false
            showTimer.toggle()
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
    @State private var showTimer = false
    @State private var timerDone = false
    @EnvironmentObject var history: HistoryStore
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
                HStack(spacing: 150) {
                    startButton
                    doneButton
                        .disabled(!timerDone) // 利用timerDone來判斷是否該enable Done按鈕
                        .sheet(isPresented: $showSuccess) {
                            SuccessView(selectedTab: $selectedTab)
                                .presentationDetents([.medium, .large])
                        }
                }
                .font(.title3)
                .padding()
                if showTimer {
                    TimerView(timerDone: $timerDone, size: geometry.size.height * 0.07)
                }
                Spacer()
                RatingView(rating: $rating)
                    .padding()
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
    ExerciseView(selectedTab: .constant(0), index: 0)
        .environmentObject(HistoryStore())
}
