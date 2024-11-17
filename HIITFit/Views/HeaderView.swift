//
//  HeaderView.swift
//  HIITFit
//
//  Created by Tai Chin Huang on 2024/11/4.
//

import SwiftUI

struct HeaderView: View {
    
    let titleText: String
    
    var body: some View {
        VStack {
            Text("\(titleText)")
                .font(.largeTitle)
            HStack {
                Image(systemName: "hand.wave")
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
                Image(systemName: "4.circle")
            }
            .font(.title2)
        }
    }
}
#Preview {
    HeaderView(titleText: "Squat")
}
