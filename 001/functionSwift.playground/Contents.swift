/*
 func 関数名（引数：引数の型）→ 戻り値の型　{
 return 戻り値
 }
*/

func Hello(name: String) -> String {
    return "こんにちわ,\(name)さん!"
}

//関数（引数）
print(Hello(name: "もぎ"))

//複数の引数、戻り値ありの関数
/*
func 関数名（引数：引数１の型,引数２：引数２の型, 引数３：引数３の型...） ->　戻り値の型
    return 戻り値
 */
func Hello(name1: String, name2: String, name3: String) -> String {
    return "こんにちわ,\(name1)さん,\(name2)さん, \(name3)さん!"
}

print(Hello(name1: "もぎ", name2: "うつみ", name3: "田中"))

/*
func 関数名（）{
    処理
}
*/

func HelloWorld() {
    print("Hello, World!")
}

HelloWorld()
