

import UIKit

class Story1ViewController: UIViewController
{
    private var name = ""
    {
        didSet
        {
            Story.name = self.name
        }
    }
    
    @IBOutlet weak var story1TextView: UITextView!
    
    @IBOutlet weak var story1ButtonA: UIButton!
    
    @IBOutlet weak var story1ButtonB: UIButton!
    
    
    @IBAction func startOverButton(_ sender: UIBarButtonItem)
    {
        if let navCon = self.navigationController
        {
            navCon.popToRootViewController(animated: true)
        }
    }
    func setName(to name:String)
    {
        self.name = name
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        let story1 = Story(toPlot: .story1)
        print("viewDidLoad(): static name: \(Story.name)")
        story1TextView.text = story1.getTextViewText()
        story1ButtonA.setTitle(story1.getButtonAText(), for: UIControlState.normal)
        story1ButtonB.setTitle(story1.getButtonBText(), for: UIControlState.normal)
    }
}
