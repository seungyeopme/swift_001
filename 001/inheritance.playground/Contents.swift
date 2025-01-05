/*
class クラス名：継承元クラス {
    
}
*/

class Monster {
    var kind = "モンスター"
    
    func bodyBrow() {
        print("たいあたり")
    }
}

class Dragon: Monster {
    func fireBreath() {
        print("火の息を吐く")
    }
}

class Slime: Monster {
    func recovery() {
        print("回復する")
    }
}

var dragon = Dragon()
print(dragon.kind)
dragon.bodyBrow()
dragon.fireBreath()

var slime = Slime()
print(slime.kind)
slime.bodyBrow()
slime.recovery()

