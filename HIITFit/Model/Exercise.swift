//
//  Exercise.swift
//  HIITFit
//
//  Created by Tai Chin Huang on 2024/11/9.
//

struct Exercise {
    let exerciseName: String
    let videoName: String
    
    enum ExerciseEnum: String {
        case squat = "Squat"
        case stepUp = "Step Up"
        case burpee = "Burpee"
        case sunSalute = "Sun Salute"
    }
}

extension Exercise {
    static let exercises: [Exercise] = [
        Exercise(
            exerciseName: ExerciseEnum.squat.rawValue,
            videoName: "squat"
        ),
        Exercise(
            exerciseName: ExerciseEnum.stepUp.rawValue,
            videoName: "step-up"
        ),
        Exercise(
            exerciseName: ExerciseEnum.burpee.rawValue,
            videoName: "burpee"
        ),
        Exercise(
            exerciseName: ExerciseEnum.sunSalute.rawValue,
            videoName: "sun-salute"
        )
    ]
}
