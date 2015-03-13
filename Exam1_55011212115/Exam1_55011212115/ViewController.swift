//
//  ViewController.swift
//  Exam1_55011212115
//
//  Created by iStudents on 3/13/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let cellIdentifier = "cellIdentifier"
    var  sortedKey:[String] = []

    @IBOutlet weak var subject: UITextField!
    
    @IBOutlet weak var inclass: UITextField!
    @IBOutlet weak var point: UITextField!
    
    @IBOutlet weak var mid: UITextField!
    
    @IBOutlet weak var midterm: UITextField!
    @IBOutlet weak var show: UITextView!
    
    @IBOutlet weak var finalls: UITextField!
    @IBOutlet weak var final: UITextField!
    
    @IBOutlet weak var sbname: UITextField!
    
    
    @IBAction func cal(sender: AnyObject) {
        
     //   var namesb:String = sbname.text
        
        var numPoint = Double((point.text as NSString).doubleValue)
        var numMid   = Double((mid.text as NSString).doubleValue)
        var numFinal = Double((final.text as NSString).doubleValue)
        
        var sum = Double(numFinal + numMid + numPoint)
        
        var agv:Double = Double(sum)

        var grade:String = CalGrade(sum)

        
        println(agv)
        
        print("Grade : \(grade)")
        var re = String(format: "%0.4f",agv)
        sortedKey.append(re)
        
        show.text = "total: \(agv) \nGrade: \(grade)"
        

        
           }
    
    func CalGrade(score:Double) -> String{
        var result:String
        if(score>=80){
            result = "A"
        }
        else if(score>=74){
            result = "B+"
        }
        else if(score>=68){
            result = "B"
        }
        else if(score>=62){
            result = "C+"
        }
        else if(score>=56){
            result = "C"
            
        }else if(score>=50){
            result = "D+"
            
        }else if(score>=44){
            result = "D"
        }
        else{
            result = "F"
        }
        
        return result
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sortedKey.count
    }
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        var cell = UITableViewCell(style: UITableViewCellStyle.Value2, reuseIdentifier: nil)
        
        
        println("array : \(sortedKey)")
        
        cell.textLabel!.text = "your grade:"
        //cell.textLabel!.text = "grade : \(self.sortedKey[indexPath.row])"
        cell.detailTextLabel!.text = "\(self.sortedKey[indexPath.row])"
        
        return cell
    }

}

