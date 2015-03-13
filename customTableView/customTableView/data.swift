//
//  data.swift
//  customTableView
//
//  Created by iStudents on 2/27/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class data: NSObject {
    func getData() -> Array<lightsaber> {
        var tempArray = Array<lightsaber>()
        
        let l1 = lightsaber(lImage: UIImage(named: "blue.png"), lName: "blue")
        tempArray.append(l1)
        
        let l2 = lightsaber(lImage: UIImage(named: "green.png"), lName: "green")
        tempArray.append(l2)
        
        let l3 = lightsaber(lImage: UIImage(named: "yellow.png"), lName: "yellow")
        tempArray.append(l3)
        
        
        return tempArray
    }
   
}
