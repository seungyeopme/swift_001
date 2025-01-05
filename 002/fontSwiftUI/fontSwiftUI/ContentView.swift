//
//  ContentView.swift
//  fontSwiftUI
//
//  Created by seungyeop on 2024/04/16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List{
            Text("Hello, world!")
                .padding()
                .font(.largeTitle)
            Text("Hello, world!")
                .padding()
                .font(.title)
            Text("Hello, world!")
                .padding()
                .font(.headline)
            Text("Hello, world!")
                .padding()
                .font(.body)
            Text("Hello, world!")
                .padding()
                .font(.callout)
            Text("Hello, world!")
                .padding()
                .font(.subheadline)
            Text("Hello, world!")
                .padding()
                .font(.footnote)
            Text("Hello, world!")
                .padding()
                .font(.caption)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
