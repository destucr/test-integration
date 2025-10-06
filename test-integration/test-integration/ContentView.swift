//
//  ContentView.swift
//  test-integration
//
//  Created by Destu Cikal Ramdani on 06/10/25.
//

import SwiftUI

struct ContentView: View {
    @State private var backgroundColor = Color.white
    let colors: [Color] = [.red, .green, .blue, .yellow, .purple, .orange]


    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .contentShape(Rectangle())
        .onTapGesture {
            backgroundColor = colors.randomElement() ?? .white
        }
        .background(backgroundColor)
    }
}

#Preview {
    ContentView()
}
