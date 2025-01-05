//{(引数：引数の型)　→戻り値の型 in 戻り値}
/*
let Hello = { (name: String) -> String in
    return "こんにちわ\(name)さん"
}
*/

/*
let Hello = { () -> String in
    return "こんにちわ田中さん"
}
*/

let Hello = {print("こんにちわ田中さん")}

//クロージャが格納された定数（引数）
Hello()


