//
//  ContentView.swift
//  MyMusic
//
//  Created by Swift-Beginners.
//

import SwiftUI

struct ContentView: View {
    // 音を鳴らすためのSoundPlayerクラスのインスタンス生成
    let soundPlayer = SoundPlayer()
    
    var body: some View {
        ZStack {
            // 背景画像を指定する
            Image(.background)
            // 背景を表示するためにレイアウトを整える
                .backgroundModifier()
            
            // 水平にレイアウト(横方向にレイアウト)
            HStack {
                // シンバルボタン
                Button {
                    // ボタンをタップしたときのアクション
                    // シンバルの音を鳴らす
                    soundPlayer.cymbalPlay()
                } label: {
                    // 画像を表示する
                    Image(.cymbal)
                } // シンバルボタンはここまで
                
                // ギターボタン
                Button {
                    // ボタンをタップしたときのアクション
                    // ギターの音を鳴らす
                    soundPlayer.guitarPlay()
                } label: {
                    // 画像を表示する
                    Image(.guitar)
                } // ギターボタンはここまで
            } // HStack ここまで
        } // ZStack ここまで
    } // body ここまで
} // ContentView ここまで

#Preview {
    ContentView()
}

