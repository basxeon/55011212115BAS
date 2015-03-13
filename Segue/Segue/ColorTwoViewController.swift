
import UIKit
protocol ColorTwoViewControllerDelegate{
    func myVCDidFinish(controller:ColorTwoViewController, text:String)
}

class ColorTwoViewController: UIViewController {

    var delegate:ColorTwoViewControllerDelegate? = nil
    
    var colorString = ""
    @IBOutlet weak var colorLabel: UILabel!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBAction func colorSelectionButton(sender: UIButton) {
        colorLabel.text = sender.titleLabel!.text!
    }
    
    
    @IBAction func saveColor(sender: UIBarButtonItem) {
        if (delegate != nil){
            delegate!.myVCDidFinish(self, text: colorLabel!.text!)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        colorLabel.text = colorString
    }


}
