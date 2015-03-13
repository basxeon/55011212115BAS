// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let tipAndTotalNamed = (tipAmt:4.00, total:25.19)
tipAndTotalNamed.tipAmt
tipAndTotalNamed.total



import Foundation

var randomNuber : Int = Int(arc4random())%50
var randomNuberNolitmit : Int = Int(arc4random())
var ran = arc4random_uniform(150)


//toInt

let string = "42"
if let number = string.toInt(){

    print("Got the number: \(number)")

}else{

    print("Could't convert to a number")

}

