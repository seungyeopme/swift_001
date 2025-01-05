//
//  ContentView.swift
//  MyFirst
//
//  Created by Swift-Beginners.
//

// SwiftUIを利用できるようにインポート
import SwiftUI

// 画面の構造を定義
struct ContentView: View {
    // 表示文字を格納する変数
    @State var outputText = "Hello, world!"

    // ビューのレイアウトを定義
    var body: some View {
        // 縦方向にレイアウト
        VStack {
            // 文字を表示
            Text(outputText)
            // フォントサイズを大きく設定
                .font(.largeTitle)

            // ボタンの表示
            Button("切り替えボタン") {
                // タップされたら表示文字を変更
                outputText = "Hi, Swift!"
            } // Button ここまで
            // 上下左右に余白を設定
            .padding()
            // 背景色を青色に設定
            .background(.blue)
            // 文字色を白色に設定
            .foregroundStyle(.white)
        } // VStack ここまで
    } // body ここまで
} // ContentView ここまで

// プレビュー描画
#Preview {
    ContentView()
} // プレビュー ここまで
