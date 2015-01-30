// Playground - noun: a place where people can play

import UIKit

var str = "calculator"


class cal{

    func sum(num1:Double,num2:Double) ->Double{
    
        let sum = Double(num1+num2)
        
        return Double(sum)
    }
    func mul(num1:Double,num2:Double) ->Double{
        
        let sum = Double(num1*num2)
        
        return Double(sum)
    }
    func div(num1:Double,num2:Double) ->Double{
        
        let sum = Double(num1/num2)
        
        return Double(sum)
    }
    func minus(num1:Double,num2:Double) ->Double{
        
        let sum = Double(num1-num2)
        
        return Double(sum)
    }
    func mod(num1:Double,num2:Double) ->Double{
        
        let sum = Double(num1%num2)
        
        return Double(sum)
    }


}

let cl = cal();

cl.sum(15,num2: 1.25)
cl.mul(15, num2:1.25)
cl.div(5, num2: 2)
cl.minus(9, num2: 7)
cl.mod(9, num2: 7)