//
//  ContentView.swift
//  NavigationTitle
//
//  Created by seungyeop on 2024/04/16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            NavigationStack {
                Text("Hello").navigationTitle(Text("タイトル"))
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
