//
//  data.swift
//  MSU
//
//  Created by iStudents on 3/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class data: NSObject {
    func getData() -> Array<msu> {
        var tempArray = Array<msu>()
        
        let l1 = msu(lImage: UIImage(named: "msu.png"), lName: "พหูนํ ปณฺฑิโต ชีเว :: ผู้มีปัญญาพึงเป็นอยู่เพื่อมหาชน")
        tempArray.append(l1)
        
//        let l2 = msu(lImage: UIImage(named: "msu_1.png"), lName: "green")
//        tempArray.append(l2)
//        
//        let l3 = msu(lImage: UIImage(named: "msu_2.png"), lName: "yellow")
//        tempArray.append(l3)
        
        
        return tempArray
    }
    
}
