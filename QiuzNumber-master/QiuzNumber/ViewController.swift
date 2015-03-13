//
//  ViewController.swift
//  QiuzNumber
//
//  Created by iStudents on 2/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    var num1 = 0
    var num2 = 0
    var num3 = 0

    @IBOutlet weak var n11: UILabel!
    
    @IBOutlet weak var n22: UILabel!
    
    @IBOutlet weak var n33: UILabel!
    
    
    @IBAction func n1(sender: AnyObject) {
        num1 += 1
        n11.text = String(num1)
    }
    @IBAction func n2(sender: AnyObject) {
        
        num2 += 1
        n22.text = String(num2)
    }
    @IBAction func n3(sender: AnyObject) {
        num3 += 1
        n33.text = String(num3)
        
    }
    @IBAction func ret(sender: AnyObject) {
        n11.text = "0"
        n22.text = "0"
        n33.text = "0"
        
         num1 = 0
         num2 = 0
         num3 = 0
        
    }
}

