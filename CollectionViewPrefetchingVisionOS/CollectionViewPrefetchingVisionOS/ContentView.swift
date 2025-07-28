//
//  ContentView.swift
//  CollectionViewPrefetchingVisionOS
//
//  Created by Chan Jung on 7/28/25.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    var body: some View {
        VStack {
            CollectionViewWrapper()
        }
        .padding()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
