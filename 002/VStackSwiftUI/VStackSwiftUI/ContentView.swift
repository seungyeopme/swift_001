//
//  ContentView.swift
//  VStackSwiftUI
//
//  Created by seungyeop on 2024/04/16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
                .padding()
            Text("Hello, SwiftUI")
                .padding()
            Text("Hello, Swift!")
                .padding()
        }
        
        
//        VStack {
//            UI部品１
//            UI部品２
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
