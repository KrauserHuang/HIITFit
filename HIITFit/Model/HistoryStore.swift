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

struct HistoryStore {
    var exerciseDays: [ExerciseDay] = []
    
    init() {
#if DEBUG
        createDevData()
#endif
    }
}
