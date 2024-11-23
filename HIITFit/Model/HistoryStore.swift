//
//  HistoryStore.swift
//  HIITFit
//
//  Created by Tai Chin Huang on 2024/11/10.
//

import Foundation

struct ExerciseDay: Identifiable {
    let id = UUID()
    let date: Date
    var exercises: [String] = []
}

// 要成為全域變數@EnvironmentObject，必須遵從ObservableObject(他是一個Publisher)
class HistoryStore: ObservableObject {
    @Published var exerciseDays: [ExerciseDay] = []
    
    init() {
#if DEBUG
        createDevData()
#endif
    }
    
    func addDoneExercise(_ exerciseName: String) {
        let today = Date()
        if today.isSameDay(as: exerciseDays[0].date) { // 判斷是否為同一天
            print("Adding \(exerciseName)")
            exerciseDays[0].exercises.append(exerciseName)
        } else { // 如果不是同一天則建立一個新的ExerciseDay
            exerciseDays.insert(
                ExerciseDay(date: today, exercises: [exerciseName]),
                at: 0)
        }
    }
}

//struct HistoryStore {
//    var exerciseDays: [ExerciseDay] = []
//    
//    init() {
//#if DEBUG
//        createDevData()
//#endif
//    }
//}
