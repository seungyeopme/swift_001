//
//  ContentView.swift
//  MyMap
//
//  Created by Swift-Beginners. on 2024/07/06.
//

import SwiftUI

struct ContentView: View {
    // 入力中の文字列を保持する状態変数
    @State var inputText: String = ""
    // 検索キーワードを保持する状態変数、初期値は"東京駅"
    @State var displaySearchKey: String = "東京駅"

    var body: some View {
        // 垂直にレイアウト（縦方向にレイアウト）
        VStack {
            // テキストフィールド（文字入力）
            TextField("キーワード", text: $inputText, prompt: Text("キーワードを入力してください"))
            // 入力が完了された時
                .onSubmit {
                    // 入力が完了したので検索キーワードに設定する
                    displaySearchKey = inputText
                }
            //　余白を追加
                .padding()

            // マップを表示
            MapView(searchKey: displaySearchKey)
        } // VStack ここまで
    } // body ここまで
} // ContentView ここまで

#Preview {
    ContentView()
}
