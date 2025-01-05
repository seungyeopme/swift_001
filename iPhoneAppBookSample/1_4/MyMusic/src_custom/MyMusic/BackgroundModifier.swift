//
//  BackgroundModifier.swift
//  MyMusic
//
//  Created by Swift-Beginners.
//

import SwiftUI

extension Image {
    func backgroundModifier() -> some View {
        // 画像を表示するImageのインスタンス
        self
        // リサイズする
            .resizable()
        // 画面いっぱいになるようにセーフエリア外まで表示されるように指定
            .ignoresSafeArea()
        // アスペクト比（縦横比）を維持して短辺基準に収まるようにする
            .scaledToFill()
    } // backgroundModifier ここまで
} // Image ここまで

