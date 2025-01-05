//
//  ContentView.swift
//  MyJanken
//
//  Created by Shin Seungyeop on 2024/12/03.
//

import SwiftUI

struct ContentView: View {
    
    @State var jankenNumber = 0
    
    var body: some View {
        
        VStack {
            Spacer()
            if jankenNumber == 0 {
                Text("これからじゃんけんをします！")
                    .padding(.bottom)
            } else if jankenNumber == 1 {
                Image(.gu).resizable().scaledToFit()
                Spacer()
                //じゃんけんの種類を指定
                Text("グー")
                    .padding(.bottom)
            } else if jankenNumber == 2 {
                Image(.choki).resizable().scaledToFit()
                Spacer()
                
                //じゃんけんの種類を指定
                Text("チョキ")
                    .padding(.bottom)
            } else {
                Image(.pa).resizable().scaledToFit()
                Spacer()
                //じゃんけんの種類を指定
                Text("パー")
                    .padding(.bottom)
            }
            
            
           
            
            Button{
                //print("タップされたよ！")
                //jankenNumber = jankenNumber + 1
                //jankenNumber = Int.random(in: 1...3)
                var newJankenNumber = 0
                
                repeat {
                    newJankenNumber = Int.random(in: 1...3)
                } while jankenNumber==newJankenNumber
                
                jankenNumber = newJankenNumber
            } label: {
                Text("じゃんけんをする！")
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .font(.title)
                    .background(.pink)
                    .foregroundStyle(.white)
            }
        }
    }
}

#Preview {
    ContentView()
}
