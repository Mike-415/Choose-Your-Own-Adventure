

import UIKit

class Story3PartAViewController: UIViewController {

    @IBOutlet weak var story3PartATextView: UITextView!
    
    
    @IBAction func startOverButton(_ sender: UIBarButtonItem)
    {
        if let navCon = self.navigationController
        {
            navCon.popToRootViewController(animated: true)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let story3PartA = Story(toPlot: .story3PartA)
        story3PartATextView.text = story3PartA.getTextViewText()
    }


}
