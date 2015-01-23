class User {
    
    //free สไตล์

var pass:[String:Int]=["bas":12548,"sick":7785,"tom":5748,"dragon":11111]

    func check(name:String) ->String{
        
        var str:String
    if pass.isEmpty{

  str = "The Dictionary is Emty"

    }else{
            str = "THR Dictionary is not Emty"
         }
    println(" \(name) Password is \(pass[name])")
    
        return str

    }

func add(){
    let ADuser="benz"

    pass.updateValue(123456789, forKey: ADuser)
    pass
    }

func del(){
    let user="tom"
    pass.removeValueForKey(user)
    pass
    }
}

let ad = User()

ad.check("bas")

ad.add()

ad.del()








