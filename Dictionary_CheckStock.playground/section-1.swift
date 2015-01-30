class stock {
    
    
    //check num of Product list Computer
    // ฟรีสไตล์
    
 var   product:[String:String]=["Notebook":"50","Harddisk":"100","CPU":"40","Video Card":"50"]
    
    
    func check(name:String) ->String{
        
        if (product[name] != nil){
            product[name] = name
            
            return "The Dictionary have this Product"
            
        }else{
            return  "The Dictionary not have User"
        }
        
    }
    
    func add(name:String,val:String) ->String{
        
        if(product[name] != nil){
            return "This username has in system"
        }
        else{
            product[name]=val
            return "Save your account complete"
        }
        
        
    }
    func editProduct(name:String,val:String) ->String{
        if(product[name] != nil){
            product[name] = val
            
            return "Edit completed"
        }
        else
        {
            return "Not have Product"
        }
    }
    
    func del(name:String ,val:String) ->String{
        
        if(product[name]  !=  nil){
            product[name] = nil
            return "Delete completed"
        }
        else{
            return "Not have Product"
        }
    }
}

let Chk = stock()

Chk.check("CPU")

Chk.add("DVDROM",val:"50")
Chk.add("RAM", val: "100")
Chk.add("Case", val:"50")



Chk.del("Case",val: "49")

Chk.check("Case")

Chk.editProduct("CPU",val:"155")

Chk.product