//
//  ViewController.swift
//  CoreImageImageView
//
//  Created by iStudents on 2/20/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit
import AssetsLibrary
import MobileCoreServices

class ViewController: UIViewController ,UINavigationControllerDelegate,UIImagePickerControllerDelegate{
    
    
    var imagePicker: UIImagePickerController!
    var newMedia: Bool?
    
    
       @IBOutlet weak var amountSlider: UISlider!
       @IBAction func loadPhotos(sender: AnyObject) {
        
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .Camera
        imagePicker.mediaTypes = [kUTTypeImage as NSString]
        presentViewController(imagePicker, animated: true, completion: nil)
        
        newMedia = true
    }
    
    
    @IBAction func savephotos(sender: AnyObject) {
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .PhotoLibrary
        imagePicker.mediaTypes = [kUTTypeImage as NSString]
        presentViewController(imagePicker, animated: true, completion: nil)
        
        newMedia = false
        
        
    }
    
    
    @IBAction func amountSliderValueChanged(sender: UISlider) {
        
        let sliderValue = sender.value
        
        let outputImage = self.oldPhoto(beginImage, withAmount: sliderValue)
        
        let cgimg = context.createCGImage(outputImage, fromRect: outputImage.extent())
        
        let newImmage = UIImage(CGImage: cgimg, scale: 1, orientation: orientation)
        
        self.UIImageCiew.image = newImmage
        
    
    }
    
    func image(image: UIImage, didFinishSavingWithError error: NSErrorPointer, contextInfo: UnsafePointer<Void>) {
        if (error != nil) {
            let alert = UIAlertController(title: "Save Failed", message: "Failed to save image", preferredStyle: UIAlertControllerStyle.Alert)
            let cancelAction = UIAlertAction(title: "OK", style: .Cancel, handler: nil)
            
            alert.addAction(cancelAction)
            self.presentViewController(alert, animated: true, completion: nil)
        }
    }

 
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        
        
        //let fileURL = NSBundle.mainBundle().URLForResource("image", withExtension: "png")
        
        //beginImage = CIImage(contentsOfURL: fileURL)
        
        filter = CIFilter(name: "CISepiaTone")
        filter.setValue(beginImage, forKey: kCIInputImageKey)
        filter.setValue(0.5, forKey: kCIInputIntensityKey)
        let outputImage = filter.outputImage
        
        context = CIContext(options: nil)
        //let cgimg = context.createCGImage(outputImage, fromRect: outputImage.extent())
        
        //let newImage = UIImage(CGImage: cgimg)
        //self.UIImageCiew.image = newImage
        
        //self.logAllFilters()
        
    }
//    
//    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject : AnyObject]) {
//        dismissViewControllerAnimated(true, completion: nil)
//        
//        let mediaType = info[UIImagePickerControllerMediaType] as NSString
//        if (mediaType.isEqualToString(kUTTypeImage as NSString)) {
//            let image = info[UIImagePickerControllerOriginalImage] as UIImage
//            UIImageCiew.image = image
//            
//            if (newMedia == true) {
//                UIImageWriteToSavedPhotosAlbum(image, self, "image: didFinishSavingWithError: contextInfo:", nil)
//            }
//        }
//    }

    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: NSDictionary!) {
        
        self.dismissViewControllerAnimated(true, completion: nil)
        
        let gotImage = info[UIImagePickerControllerOriginalImage] as UIImage
        
        beginImage = CIImage(image: gotImage)
        orientation = gotImage.imageOrientation
        filter.setValue(beginImage, forKey: kCIInputImageKey)
        self.amountSliderValueChanged(amountSlider)
    }
    
    func logAllFilters(){
        let properties = CIFilter.filterNamesInCategory(kCICategoryBuiltIn)
        print(properties)
        
        for filterName: AnyObject in properties{
        
        let fltr = CIFilter(name: filterName as String)
            
            println(fltr.attributes())
        }
    
    }
    
    func oldPhoto (img: CIImage, withAmount intensity: Float) -> CIImage{
    
        let sepia = CIFilter(name:"CISepiaTone")
        sepia.setValue(img, forKey: kCIInputImageKey)
        sepia.setValue(intensity, forKey: "inputIntensity")
        
        let random = CIFilter(name:"CIRandomGenerator")
        
        let lighten = CIFilter(name:"CIColorControls")
        lighten.setValue(random.outputImage, forKey: kCIInputImageKey)
        lighten.setValue(1 - intensity, forKey:"inputBrightness")
        lighten.setValue(0, forKey:"inputSaturation")
        
        let croppedImage = lighten.outputImage.imageByCroppingToRect(beginImage.extent())
        
        let comosite = CIFilter(name:"CIHardLightBlendMode")
        comosite.setValue(sepia.outputImage, forKey: kCIInputImageKey)
        comosite.setValue(croppedImage, forKey: kCIInputBackgroundImageKey)
        
        let vignette = CIFilter(name:"CIVignette")
        vignette.setValue(comosite.outputImage, forKey: kCIInputImageKey)
        vignette.setValue(intensity * 2, forKey:"inputIntensity")
        vignette.setValue(intensity * 30, forKey:"inputRadius")
        
        return vignette.outputImage
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

    @IBOutlet weak var UIImageCiew: UIImageView!

    
    var context: CIContext!
    var filter: CIFilter!
    var beginImage: CIImage!
    var orientation: UIImageOrientation = .Up

    
}

