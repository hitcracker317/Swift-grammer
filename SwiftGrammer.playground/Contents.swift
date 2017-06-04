//: Playground - noun: a place where people can play

import UIKit

var firstName:String = "Akiko"
var SecondName:String = "Maejima"
print(firstName + " " + SecondName); //print：実行結果を出力


//型変換
var number:Int = 69
var numberString:String = String(number) //int型をString型に変換

var numberAnotherString:String = "96"
var numberAnother:Int = Int(numberAnotherString)! //String型をint型に変換




//タプル：var (変数1,変数2) = (変数1の値,変数2の値)
var (a,b) = (5,7) //a = 5 , b = 7。
print(a + b) //12


//小数と整数
var intVal = 3
var doubleVal = 3.14

print(Double(intVal) + doubleVal) //Int型をDouble型に変換して計算




//配列
// 空配列の宣言(配列に格納する値の型を限定したい場合、末尾に型を追加)
var array:[String] = []

//letで不動配列を定義
let animalsArray = ["ウォンバット","たぬき","ぱんだ"];

//0番目の配列の値を取り出す(中身はウォンバット)
let animal = animalsArray[0];
print("\(animal)をモフりたい！") //ウォンバットをモフりたい！

//範囲を指定して取り出す(["たぬき","ぱんだ"])
let animal2 = animalsArray[1...2]
print("\(animal2)もモフりたい！") //["たぬき", "ぱんだ"]もモフりたい！

//書き換える
var fruitArray = ["いちご","メロン","青リンゴ"];
fruitArray[1] = "ぶどう"
print("中身は\(fruitArray)"); //中身は["いちご", "ぶどう", "青リンゴ"]



//配列への追加
fruitArray.append("バナナ"); //appendで末尾に要素を追加。
print("中身は\(fruitArray)") //中身は["いちご", "ぶどう", "青リンゴ","バナナ"]

fruitArray += ["ドリアン"] //+=を使用することもできる
print("中身は\(fruitArray)") //中身は["いちご", "ぶどう", "青リンゴ", "バナナ", "ドリアン"]

var otherFruits = ["いちじく","チェリー"] //配列に別の配列の要素を追加することもできる
fruitArray.append(contentsOf: otherFruits) //["いちご", "ぶどう", "青リンゴ", "バナナ", "ドリアン", "いちじく","チェリー"]

//挿入するインデックスを指定して追加
fruitArray.insert("洋なし", at: 2); //中身は["いちご", "ぶどう", "洋なし", "青リンゴ", "バナナ", "ドリアン", "いちじく", "チェリー"]

//配列列挙
//典型的なfor文(3.0からfor文の書き方が変わった)
for i in (0 ..< fruitArray.count) {
    print("\(fruitArray[i])おいしい！");
}

//高速列挙
for anotherAnimal in fruitArray{
    print("\(anotherAnimal)もおいしい！");
}


//配列を削除
//配列の中身から指定した場所の要素を削除
fruitArray.remove(at: 2);
print("中身は\(fruitArray)");

//要素の範囲を指定して削除
fruitArray[3...5] = []
print("中身は\(fruitArray)") //中身は["いちご", "ぶどう", "青リンゴ", "チェリー"

//配列の最後の要素を削除
fruitArray.removeLast()
print("中身は\(fruitArray)") //中身は["いちご", "ぶどう", "青リンゴ"]

//全て削除
fruitArray.removeAll()
print("中身は\(fruitArray)") //中身は[]



//Set
let newComer: Set = ["maejima", "watabe", "komoto"]
let wearGlass: Set = ["maejima"]
var isWearGlass:Bool = wearGlass.isSubset(of: newComer)
print("maejimaはメガネをかけているか？：\(isWearGlass)")



//辞書
var wordCounts = Dictionary<String, Int>() // 空の辞書(String型がキーでInt型が値)

//初期値を入れて辞書を定義
var maejimaDict: [String:String] = [
    "age" : "25",
    "like" : "music",
    "born" : "Japan"
]

print(maejimaDict["age"]) //ageというキーの中に入っている値(25)を取り出す

// keyの一覧を取得して配列に格納
let keys: Array = Array(maejimaDict.keys)  //  [age, like, born]

// valueの一覧を取得して配列に格納
let values: Array = Array(maejimaDict.values) //  [25, msuic, Gifu]

//列挙
for (key,value) in maejimaDict{
    print("\(key)の値は\(value)")
}

maejimaDict["height"] = "163"; //maedaDictに heigth:"163" を追加

print(maejimaDict)





maejimaDict.removeValue(forKey: "height") //指定したキーのデータを削除
//maejimaDict["height"] = nil; //値にnilを代入することで削除することもできる(Optionalではないとき)
print(maejimaDict) //["like": music, "age": 25, "born": Gifu]



maejimaDict.updateValue("27", forKey: "age") //ageキーの値を27に変更
print(maejimaDict) //["like": music, "age": 27, "born": Gifu]



var opValue:String? = "あああ" //Optional型の変数を定義
opValue = nil //nilを入ることを考慮するのでnil入れてもオーケー




//関数

func valFunc(val: Int) -> Int {
    var resultVal = 0
    resultVal = val * 2
    return resultVal
}

valFunc(val: 3)





func squareSum(numbers: Int...) -> Int {
    //...を付与することで無限個の引数を入れることができる。(可変引数)
    //無限個の引数は引数名の配列(この関数だとnumbers)として扱える
    var sum = 0
    
    //関数は入れ子にできる。入れ子の関数は、外側の関数で定義された変数にアクセスできる
    func addSquare(x:Int){
        sum += x * x
    }
    for number in numbers {
        addSquare(x:number)
    }
    return sum
}
let sum = squareSum(numbers: 2, 2, 2, 2, 2, 2)
print("合計値は\(sum)") //24 ((2^2)*6)





//引数の2つの値を足して、合計値を返すメソッド
func plusNumbers(num1:Int ,num2:Int) -> Int {
    return num1 + num2
}

var addSum = plusNumbers(num1:10, num2: 5)
print("合計値は\(addSum)") //10 + 5




//numbersという配列のそれぞれの要素に3をかけて返すクロージャー関数
var numberArray = [4, 6, 8, 9]
let threeTimes = numberArray.map({(number: Int) -> Int in
    return 3 * number
})
print("numberは：\(threeTimes)") //numberは：[12, 18, 24, 27]





//独自クラス
class Car {
    var name = "" //プロパティ
    
    //メソッド
    func drive() {
        
    }
}

//独自クラス　- インスタンス化
var car = Car()
car.name = "セダン" //プロパティ
car.drive() //メソッド







