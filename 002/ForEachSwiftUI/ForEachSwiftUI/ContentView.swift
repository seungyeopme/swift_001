//
//  ContentView.swift
//  ForEachSwiftUI
//
//  Created by seungyeop on 2024/04/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            ForEach(0..<11) { num in
                Text("\(num): Hello, World!")
            }
        }
        
        /*
        ForEach(数値範囲)　{ 変数　in
            UI部品
            
        }
         
        ForEach(構造体の配列) { 変数　in
            UI部品
        */
        
    }
}

struct Human: Identifiable {
    let id = UUID()
    let name: String
}

struct ArrayContentView: View {
    let humans =  [
        Human(name: "田中"),
        Human(name: "鈴木"),
        Human(name: "佐藤")
    ]
    
    var body: some View {
//        Text("こんにちは")
        List {
            ForEach(humans) { human in
//         Text("\(human.name)さん、こんにちは")
                Text(human.id.description)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
//        ContentView()
        ArrayContentView()
    }
}
