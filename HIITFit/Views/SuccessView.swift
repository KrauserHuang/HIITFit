//
//  SuccessView.swift
//  HIITFit
//
//  Created by Tai Chin Huang on 2024/11/17.
//

import SwiftUI

struct SuccessView: View {
    var body: some View {
        ZStack {
            VStack {
                Image(systemName: "hand.raised.fill")
                    .resizedToFill(width: 75, height: 75)
                    .foregroundStyle(.purple)
                Text("High Five!")
                    .fontWeight(.heavy)
                    .font(.largeTitle)
                Text("Good job completing all four exercises!\nRemember tomorrow is another day.\nSo eat well and get some rest.")
                    .foregroundStyle(.gray)
                    .multilineTextAlignment(.center)
            }
            VStack {
                Spacer()
                Button("Continue") { }
                    .padding()
            }
        }
    }
}

#Preview {
    SuccessView()
}
