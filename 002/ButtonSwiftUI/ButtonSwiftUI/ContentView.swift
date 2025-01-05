//
//  ContentView.swift
//  ButtonSwiftUI
//
//  Created by seungyeop on 2024/04/17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button(action: {
            print("ボタンを押してください")
        }
        ){
            Text("ボタンを押してください")
        }
    }
}

func Report() {
    print("ボタンガ押されました")
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
