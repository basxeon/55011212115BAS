// Playground - noun: a place where people can play

class food {
    
    var food :[String] = ["กระเพราไข่ดาว", "กระเพราปลาหมึก", "กระเพราหมูกรอบ"]
    var price:[String] = ["45", "50", "40"]
    
    let pay: String
    
    init(reqest : String) {
        self.pay = reqest
    }
    func foodprice() -> String {
        var bath:String = ""
        for (var i=0 ; i < food.count ; i++){
            if(food[i]==pay){
                bath = price[i]
            }
        }
        return pay+" ราคาจานละ "+bath+" บาท"
    }

}


//main
let answer = food(reqest: "กระเพราหมูกรอบ")

answer.foodprice()
