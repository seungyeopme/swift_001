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
            // リサイズする
                .resizable()
            // 画面いっぱいになるようにセーフエリア外まで表示されるように指定
                .ignoresSafeArea()
            // アスペクト比（縦横比）を維持して短辺基準に収まるようにする
                .scaledToFill()
            
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

