//
//  HistoryStoreDevData.swift
//  HIITFit
//
//  Created by Tai Chin Huang on 2024/11/10.
//

import Foundation

extension HistoryStore {
    // 只有struct才需要用mutating，class不需要
    func createDevData() {
        exerciseDays = [
            ExerciseDay(
                date: Date().addingTimeInterval(-86400),
                exercises: [
                    Exercise.exercises[0].exerciseName,
                    Exercise.exercises[1].exerciseName,
                    Exercise.exercises[2].exerciseName
                ]),
            ExerciseDay(
                date: Date().addingTimeInterval(-86400 * 2),
                exercises: [
                    Exercise.exercises[1].exerciseName,
                    Exercise.exercises[0].exerciseName
                ])
        ]
    }
}
