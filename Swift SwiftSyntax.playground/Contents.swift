//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


//for in
for index in 1...10 {
    print("index:\(index)") //10回出力
}

var array = ["きつね","たぬき","たまご"]
for content in array {
    print("中身：\(content)")
}


//繰り返しの回数指定(1から9まで)
for index in 1..<10 {
    print("index:\(index)")
}



for _ in 1..<10 {
    print("Oh!!")
}



var muArray = ["せいこ","アララ","きのい"]

for (index, value) in muArray.enumerated() {
    print("\(index):\(value)")
}



var score = 88

if score > 90 {
    print("天才!!")
} else if 80 <= score && score <= 90{
    print("合格!!")
} else {
    print("残念、不合格!!")
}






switch score {
    case 100:
        print("大天才！！！")
    break
    case 80...99: //80~99
        print("合格")
    break
    default :
        print("残念、不合格！！！")
    break
}





enum GameState: Int {
    case Playing = 1
    case GameOver = 2
}

var state: GameState = GameState.Playing
print(state) //列挙子(Playing)
print(state.rawValue) //列挙子に対応する値(1)


switch state {
case .Playing:
    print("ゲーム中")
case .GameOver:
    print("ゲーム終了")
}


var x = 1
while x < 100 {
    x = x * 2
    print("値は：\(x)です！")
}



var fullFuel = 100

func checkFuel(fullFuel: Int?) {
    guard let fuel = fullFuel else {
        print("もう走れません")
        return
    }
    print("まだ走れる！")
}

checkFuel(fullFuel: fullFuel);


//filter 
var numbers = [1,21,522,34,16]

let results = numbers.filter{ (x:Int) -> Bool in
    //100より小さい値のみを取り出す
    if x < 100 {
        return true
    } else {
        return false
    }
}

print("結果:\(results)"); //結果:[1, 21, 34, 16]




let mapResults = numbers.map{ (x:Int) -> Int in
    //100より小さい値を2倍にして返す
    if x < 100 {
        return x * 2
    } else {
        return x
    }
}

print("結果:\(mapResults)"); //結果:[2, 42, 522, 68, 32]




let reduceTotla = numbers.reduce(0){ (total:Int, score:Int) -> Int in
    //配列の中身を値を足し合わせる
    return total + score
}

print("合計値:\(reduceTotla)")


let total = numbers.reduce(0, {$0 + $1})
print("合計値:\(total)")




numbers.sort{ (value1:Int, value2:Int) -> Bool in
    value1 < value2 //昇順にソート
}
print("ソート結果:\(numbers)") //ソート結果:[1, 16, 21, 34, 522]


//簡潔な書き方
numbers.sort{$0 > $1} //降順
print("ソート結果:\(numbers)") //ソート結果:[522, 34, 21, 16, 1]



//インデックス番号が4のときは処理を行わない
for value in 0...10 where value != 4 {
    print("インデックス:\(value)")
}
