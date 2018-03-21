

import UIKit

class Story2PartBViewController: UIViewController
{

    @IBOutlet weak var story2PartBTextView: UITextView!
    
    
    @IBAction func startOverButton(_ sender: UIBarButtonItem)
    {
        if let navCon = self.navigationController
        {
            navCon.popToRootViewController(animated: true)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let story2PartB = Story(toPlot: .story2PartB)
        story2PartBTextView.text = story2PartB.getTextViewText()
    }


}
