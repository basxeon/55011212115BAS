// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
let num1 = 5
let num2 = 10
var total = num1 + num2

print("\(total) = \(num1)+\(num2) ")

total += 1
let priceInferred = -19
let priceIntExplicit:Double = -19.99

let priceFloatInferred = 19.99
let priceFloatExplicit:Float = -19.99

let onSaleInferred = true
let onSaleExplicit:Bool = false

let nameInferred = "Bas Xeon"
let nameExplicit:String = "Bas Xeon"

var shopingList = ["Eggs","Milk"]
var shopingListExplicit:[String] = ["Eggs","Milk"]
print("The shopping list containts \(shopingList.count) items.")
shopingList.append("Flour")
shopingList += ["Baking Powder"]

var firstitem = shopingList[0]

shopingList[0] = "Six eggs"


if (onSaleInferred) {
    println("\(nameInferred) on sale for \(priceInferred)!")
}else {
    println("\(nameInferred) at regular price \(priceInferred)!")
}


var array = ["abc","bas","vbs"]
for (var i = 0;i < array.count;i++){
println(array[i])
}

var aa = ["A","C","V","S"]
var dtr = ""
for dtr in aa {
println(dtr)
}












