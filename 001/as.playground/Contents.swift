//変数 as 継承元の型

var any: Any = 1024
var str: String = "String"
var int: Int = 128

/*
 
アップキャスト
var anyStr = str as Any
anyStr = any
print(anyStr)

 */

/*
 
 ダウンキャスト
 
 as!
 */
//print(any as! Int)
//print(any as! String)

print(any as? Int)
print(any as? String)
