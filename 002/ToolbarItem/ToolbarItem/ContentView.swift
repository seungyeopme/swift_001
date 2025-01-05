//
//  ContentView.swift
//  ToolbarItem
//
//  Created by seungyeop on 2024/04/16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            Text("Hello").toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Text("アイテム")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
