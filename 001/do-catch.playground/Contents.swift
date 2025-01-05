/*
do {
    try エラーが出るかもしれない関数
} catch {
    エラーが出た時の処
}
*/


import UIKit

var canConnectServer = true

func connectServer() throws {
    if canConnectServer {
        print("サーバと接続")
    }
    else {
        throw NSError()
    }
}

func getData() {
    do {
        try connectServer()
        print("データを取り出す")
    }catch {
        print("エラーの時の処理")
    }
}

getData()
