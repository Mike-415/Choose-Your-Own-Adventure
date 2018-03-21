

import UIKit

class Story3PartBViewController: UIViewController
{

    @IBOutlet weak var story3PartBTextView: UITextView!
    
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
        let story3PartB = Story(toPlot: .story3PartB)
        story3PartBTextView.text = story3PartB.getTextViewText()
    }

}
