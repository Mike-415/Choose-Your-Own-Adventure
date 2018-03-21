

import UIKit

class Story2PartAViewController: UIViewController
{

    @IBOutlet weak var story2PartATextView: UITextView!
    
    @IBOutlet weak var story2PartAButtonA: UIButton!
    
    @IBOutlet weak var story2PartAButtonB: UIButton!
    
    
    @IBAction func startOverButton(_ sender: UIBarButtonItem)
    {
        if let navCon = self.navigationController
        {
            navCon.popToRootViewController(animated: true)
        }
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
        let story2PartA = Story(toPlot: .story2PartA)
        story2PartATextView.text = story2PartA.getTextViewText()
        story2PartAButtonA.setTitle(story2PartA.getButtonAText(), for: UIControlState.normal)
        story2PartAButtonB.setTitle(story2PartA.getButtonBText(), for: UIControlState.normal)
        
        
    }
}
