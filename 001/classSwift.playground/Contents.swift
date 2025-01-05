/*
class クラス名　{
    プロパティ１
    メソッド１...
}
*/

//var 変数名 = クラス名()

//インスタンス.プロパティ１
//インスタンス.メソッド１
/*
class Animal {
    var age = 2
    let kind = "犬"
    
    func Bite() {
        print("\(age)歳の\(kind)が噛みつく")
    }
}

var dog = Animal()

print(dog.age)
print(dog.kind)

dog.Bite()
*/


/*
init(プロパティ１：型、プロパティ２：型){
    self.プロパティ１＝プロパティ１
    self.プロパティ２＝プロパティ２
}
*/
//イニシャライザ
class Animal {
    var age: Int
    let kind: String
    
    func Bite() {
        print("\(age)歳の\(kind)が噛みつく")
    }
    
    init(age: Int, kind: String) {
        self.age = age
        self.kind = kind
    }
}

var cat = Animal(age: 3, kind: "猫")

cat.Bite()
