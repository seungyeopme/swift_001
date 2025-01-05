/*
var 変数名　= [
    キー：値,
    キー：値,
    キー：値,
    キー：値
]
*/

var occupations = [
    "ヒロシ": "経営者",
    "タツヒロ": "詩人",
    "タシノブ": "数学者"
]

print(occupations["タツヒロ"]!)

//辞書の名前[付け加えたいキー] = 付け加えたい値

occupations["ノブサダ"] = "哲学者"

print(occupations)

//var 変数名 = [キーの型：値の型]()
var emptyDictionary = [String: Int]()

print(emptyDictionary)
