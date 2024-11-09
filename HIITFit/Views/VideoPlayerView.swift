//
//  VideoPlayerView.swift
//  HIITFit
//
//  Created by Tai Chin Huang on 2024/11/9.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    
    let name: String
    
    var body: some View {
        if let url = Bundle.main.url(forResource: name, withExtension: "mp4") {
            VideoPlayer(player: AVPlayer(url: url))
        } else {
            Text("Couldn't find \(name).mp4")
                .foregroundColor(.red)
        }
    }
}

#Preview {
    VideoPlayerView(name: "squat")
}
