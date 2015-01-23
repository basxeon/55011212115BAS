class am {
    
    //UserName
    
    let countam :[String] = ["นก", "ม้าลาย", "เสือ"]
    let foodam:[String] = ["กล้วย", "แตงโม", "ขนุน"]
    
    let amzoo: String
    
    init(countam : String) {
        self.amzoo = countam
    }
    func zoo() -> String {
        var food:String = ""
        for (var i=0 ; i<countam.count ; i++){
            if(countam[i]==amzoo){
                food = foodam[i]
                
                
            }
        }
        return food
    }
}
let amfood = am(countam:"นก")
let aa = amfood.zoo()
print(" อาหารคือ \(aa)")



