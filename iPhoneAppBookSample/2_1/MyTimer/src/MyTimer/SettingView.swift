//
//  SettingView.swift
//  MyTimer
//
//  Created by Swift-Beginners.
//

import SwiftUI

struct SettingView: View {
    // 永続化する秒数設定（初期値は10）
    @AppStorage("timer_value") var timerValue = 10
    
    var body: some View {
        // 奥から手前方向にレイアウト
        ZStack {
            // 背景色表示
            Color.backgroundSetting
            // セーフエリアを超えて画面全体に配置する
                .ignoresSafeArea()
            // 垂直にレイアウト（縦方向にレイアウト）
            VStack {
                // スペースを空ける
                Spacer()
                // テキストを表示する
                Text("\(timerValue)秒")
                // 文字サイズを指定
                    .font(.largeTitle)
                // スペースを空ける
                Spacer()
                // Pickerを表示
                Picker(selection: $timerValue) {
                    Text("10")
                        .tag(10)
                    Text("20")
                        .tag(20)
                    Text("30")
                        .tag(30)
                    Text("40")
                        .tag(40)
                    Text("50")
                        .tag(50)
                    Text("60")
                        .tag(60)
                } label: {
                    Text("選択")
                }
                // Pickerをホイール表示
                .pickerStyle(.wheel)
                // スペースを空ける
                Spacer()
            } // VStack ここまで
        } // ZStack ここまで
    } // body ここまで
} // SettingView ここまで

#Preview {
    SettingView()
}
