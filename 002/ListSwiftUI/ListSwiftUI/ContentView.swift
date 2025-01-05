//
//  ContentView.swift
//  ListSwiftUI
//
//  Created by seungyeop on 2024/04/16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            List {
              Text("リンゴ").padding()
              Text("レモン").padding()
              Text("オレンジ").padding()
            }
            //Text("Hello, world!")
        }
        
        
        /*
        List{
            Listに格納したいもの
        }
         */
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
