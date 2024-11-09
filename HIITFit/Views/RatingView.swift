//
//  RatingView.swift
//  HIITFit
//
//  Created by Tai Chin Huang on 2024/11/9.
//

import SwiftUI

struct RatingView: View {
    var body: some View {
        HStack {
            ForEach(0..<5) { _ in
                Image(systemName: "waveform.path.ecg")
                    .foregroundStyle(.gray)
                    .font(.largeTitle)
            }
        }
    }
}

#Preview {
    RatingView()
}
