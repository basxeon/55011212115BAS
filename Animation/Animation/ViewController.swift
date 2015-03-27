//
//  ViewController.swift
//  Animation
//
//  Created by iStudents on 3/27/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let coloredSquare = UIView()
        
//        coloredSquare.backgroundColor = UIColor.blueColor()
//        
//        coloredSquare.frame = CGRect(x: 0, y: 120, width: 50, height: 50)
//        
//        self.view.addSubview(coloredSquare)
//       
//        UIView.animateWithDuration(1.0, animations: {
//            coloredSquare.backgroundColor = UIColor.redColor()
//        
//         coloredSquare.frame = CGRect(x: 320-50, y: 120, width: 50, height: 50)
//        })
        

        
    


    }
    @IBOutlet weak var slider: UISlider!
    @IBAction func AnimationButton(sender: AnyObject) {
        
        let numberOfFish = Int(self.slider.value)
        
        for loopNumber in 1...numberOfFish {
            
            // set up some constants for the animation
            let duration = 1.0
            let options = UIViewAnimationOptions.CurveLinear
            
            // randomly assign a delay of 0.9 to 1s
            let delay = NSTimeInterval(900 + arc4random_uniform(100)) / 1000
            
            // set up some constants for the fish
            let size : CGFloat = CGFloat( arc4random_uniform(40))+20
            let yPosition : CGFloat = CGFloat( arc4random_uniform(200))+20
            
            // create the fish
            let fish = UIImageView()
            fish.image = UIImage(named: "arrow1")
            fish.frame = CGRectMake(0-size, yPosition, size, size)
            self.view.addSubview(fish)
            
            // define the animation
            UIView.animateWithDuration(duration, delay: delay, options: options, animations: {
                
                // move the fish
                fish.frame = CGRectMake(320, yPosition, size, size)
                
                }, completion: { animationFinished in
                    
                    // remove the fish
                    fish.removeFromSuperview()
            })
        }

        
       
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

