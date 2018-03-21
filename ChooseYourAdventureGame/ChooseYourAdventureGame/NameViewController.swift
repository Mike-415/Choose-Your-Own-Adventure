
import UIKit

class NameViewController: UIViewController, UITextFieldDelegate
{
    
    private var name:String?
    
    @IBOutlet weak var nameTextField: UITextField!
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        textField.resignFirstResponder()
        return true
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool
    {
        
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "Story1Segue"
        {
            let nextViewController = segue.destination as? Story1ViewController
            if let nvc = nextViewController
            {
                nvc.setName(to: nameTextField.text!)
            }
        }
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

    }
    
}

