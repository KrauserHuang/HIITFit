//
//  HistoryView.swift
//  HIITFit
//
//  Created by Tai Chin Huang on 2024/11/10.
//

import SwiftUI

struct HistoryView: View {
    
    let today = Date()
    let yesterday = Date().addingTimeInterval(-86400)
    
    let exercises1 = ["Squat", "Step Up", "Burpee", "Sun Salute"]
    let exercises2 = ["Squat", "Step Up", "Burpee"]
    
    var body: some View {
        VStack {
            Text("History")
                .font(.title)
                .padding()
            
            Form {
                Section {
                    // Section content
                } header: {
                    Text(today.formatted(as: "MMM d"))
                        .font(.headline)
                }
                
                Section {
                    // Section content
                } header: {
                    Text(yesterday.formatted(as: "MMM d"))
                        .font(.headline)
                }
            }
        }
    }
}

#Preview {
    HistoryView()
}
