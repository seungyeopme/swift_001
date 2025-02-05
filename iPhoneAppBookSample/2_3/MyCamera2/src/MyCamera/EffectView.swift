//
//  EffectView.swift
//  MyCamera
//
//  Created by Swift-Beginners on 2024/07/21.
//

import SwiftUI

struct EffectView: View {
    // エフェクト編集画面(sheet)の開閉状態を管理
    @Binding var isShowSheet: Bool
    // 撮影した写真
    let captureImage: UIImage
    // 表示する写真
    @State var showImage: UIImage?

    var body: some View {
        // 縦方向にレイアウト
        VStack {
            // スペース追加
            Spacer()

            if let showImage {
                // 表示する写真がある場合は画面に表示
                Image(uiImage: showImage)
                // リサイズする
                    .resizable()
                // アスペクト比（縦横比）を維持して画面内に収まるようにする
                    .scaledToFit()
            } // ifはここまで

            // スペース追加
            Spacer()
            // 「エフェクト」ボタン
            Button {
                // ボタンをタップしたときのアクション
                // フィルタ名を指定
                let filterName = "CIPhotoEffectMono"
                // 元々の画像の回転角度を取得
                let rotate = captureImage.imageOrientation
                // UIImage形式の画像をCIImage形式に変換
                let inputImage = CIImage(image: captureImage)

                // フィルタ名を指定してCIFilterのインスタンスを取得
                guard let effectFilter = CIFilter(name: filterName) else {
                    return
                }
                // フィルタ加工のパラメータを初期化
                effectFilter.setDefaults()
                // インスタンスにフィルタ加工する元画像を設定
                effectFilter.setValue(inputImage, forKey: kCIInputImageKey)
                // フィルタ加工を行う情報を生成
                guard let outputImage = effectFilter.outputImage else {
                    return
                }
                // CIContextのインスタンスを取得
                let ciContext = CIContext(options: nil)
                // フィルタ加工後の画像をCIContext上に描画し、
                // 結果をcgImageとしてCGImage形式の画像を取得
                guard let cgImage = ciContext.createCGImage(outputImage, from: outputImage.extent) else {
                    return
                }
                // フィルタ加工後の画像をCGImage形式から
                // UIImage形式に変更。その際に回転角度を指定。
                showImage = UIImage(
                    cgImage: cgImage,
                    scale: 1.0,
                    orientation: rotate
                )

            } label: {
                // テキスト表示する
                Text("エフェクト")
                // 横幅いっぱい
                    .frame(maxWidth: .infinity)
                // 高さ50ポイントを指定
                    .frame(height: 50)
                // 文字列をセンタリング指定
                    .multilineTextAlignment(.center)
                // 背景を青色に指定
                    .background(Color.blue)
                // 文字色を白色に指定
                    .foregroundStyle(Color.white)
            } // 「エフェクト」ボタンここまで
            // 上下左右に余白を追加
            .padding()

            // showImageをアンラップする
            if let showImage {
                // showImageから共有する画像を生成する
                let shareImage = Image(uiImage: showImage)
                // 共有シート
                ShareLink(item: shareImage, subject: nil, message: nil,
                          preview: SharePreview("Photo", image: shareImage)) {
                    // テキスト表示
                    Text("シェア")
                    // 横幅いっぱい
                        .frame(maxWidth: .infinity)
                    // 高さ50ポイント指定
                        .frame(height: 50)
                    // 背景を青色に指定
                        .background(Color.blue)
                    // 文字色を白色に指定
                        .foregroundStyle(Color.white)
                } // ShareLinkここまで
                // 上下左右に余白を追加
                          .padding()
            } // アンラップここまで

            // 「閉じる」ボタン
            Button {
                // ボタンをタップしたときのアクション
                // エフェクト編集画面を閉じる
                isShowSheet.toggle()
            } label: {
                // テキスト表示する
                Text("閉じる")
                // 横幅いっぱい
                    .frame(maxWidth: .infinity)
                // 高さ50ポイントを指定
                    .frame(height: 50)
                // 文字列をセンタリング指定
                    .multilineTextAlignment(.center)
                // 背景を青色に指定
                    .background(Color.blue)
                // 文字色を白色に指定
                    .foregroundStyle(Color.white)
            } // 「閉じる」ボタンここまで
            // 上下左右に余白を追加
            .padding()
        } // VStackここまで
        // 写真が表示されるときに実行される
        .onAppear {
            // 撮影した写真を表示する写真に設定
            showImage = captureImage
        } // .onAppearここまで
    } // bodyここまで
} // EffectViewここまで

#Preview {
    EffectView(
        isShowSheet: .constant(true),
        captureImage: UIImage(named: "preview_use")!
    )
}
