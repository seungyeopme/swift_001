//var optionalInt: Int? = 30
//print(optionalInt)

//強制的アンラップ
//var optionalInt: Int? = 30
//print(optionalInt!)

//if
//var optionalInt: Int? = nil
//if let unwrapedInt = optionalInt {
//    print(unwrapedInt)
//}
//else {
//    print("unwrapedIntはnil")
//}

//guard
var optionalInt: Int? = 20

func Unwrap() {
    guard let unwrapedInt = optionalInt else {
        print("unwrapedIntはnil")
        return
    }
    print(unwrapedInt)
}

Unwrap()
