//
//  ColorTwoViewController.swift
//  MsuPresent
//
//  Created by iStudents on 3/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit


protocol ColorTwoViewControllerDelegate{
    func myVCDidFinish(controller:ColorTwoViewController,text:String)
}

class ColorTwoViewController: UIViewController {
    var delegate:ColorTwoViewControllerDelegate? = nil
        var colorString = ""
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var colorLabel: UILabel!
    
    
    @IBAction func ColorSelectionButton(sender: AnyObject) {
        colorLabel.text = sender.titleLabel!.text
    }
    
    @IBAction func SaveColor(sender: AnyObject) {
        
        if(delegate != nil){delegate!.myVCDidFinish(self, text: colorLabel!.text!)}    }

    override func viewDidLoad() {
        super.viewDidLoad()
        colorLabel.text = colorString

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
