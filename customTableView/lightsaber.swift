//
//  lightsaber.swift
//  customTableView
//
//  Created by iStudents on 2/27/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import Foundation
import UIKit

struct lightsaber {
    var lightsaberImage: UIImage
    var lightsaberName: String
    
    init (lImage: UIImage, lName: String){
    self.lightsaberImage = lImage
    self.lightsaberName = lName
    }
}