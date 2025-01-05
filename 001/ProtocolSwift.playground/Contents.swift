/*
protocol プロトコル名 {
    var プロパティ名: 型 { get set }
    func メソッド名()
}

struct 構造体名: プロトコル名１, プロトコル２, プロトコル３ {
    var プロトコルで定義したプロパティ: 型
    func プロトコルで定義したメソッド() {
        処理内容
    }
}
*/

protocol Animal {
    var age: Int { get }
    func bark()
}

struct Dog: Animal () {
    let age: Int
    func bark() {
        print(犬が吠える)
    }
    
}
