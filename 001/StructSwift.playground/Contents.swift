/*
 struct 構造対名 {
 プロパティ１
 メソッド１...
 }
 */

/*
var インスタンス名 = 構造体名()

インスタンス.プロパティ
インスタンス.メソッド
*/

/*
struct Animal {
    let age = 5
    var kind = "犬"
    
    func Bite() {
        print("\(age)歳の\(kind)が噛み付く")
    }
}
*/

/*
var dog = Animal()
dog.Bite()
*/



/*
 init(プロパティ１:型, プロパティ２:型)
    self.プロパティ１ = プロパティ１
    self.プロパティ２ = プロパティ２
 */

//　イニシャライザ
struct Animal {
    let age: Int
    var kind: String
    
    func Bite() {
        print("\(age)歳の\(kind)が噛み付く")
    }
    
    init(age: Int, kind: String) {
        self.age = age
        self.kind = kind
    }
}

var panda = Animal(age: 10, kind: "パンダ")
panda.Bite()


/*
var 配列名: [構造体] = [
    構造体(),
    構造体()
]
*/

// 構造体配列
var animals: [Animal] = [
    Animal(age: 10, kind: "トラ"),
    Animal(age: 2, kind: "人間"),
    Animal(age: 5, kind: "ヘビ")
]

animals[1].Bite()




