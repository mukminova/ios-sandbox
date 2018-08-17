import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var hiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func showButton(_ sender: Any) {
        self.hiLabel.text = "Hi, "
        self.alert(title: "What is your name?", message: "Enter your name", style: .alert)
    }
    
    func alert(title: String, message: String, style: UIAlertControllerStyle) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: style)
        let action = UIAlertAction(title: "Ok", style: .default) { (action) in
            let text = alertController.textFields?.first
            self.hiLabel.text! += (text?.text!)!
            print(text ?? "nil text")
        }
        alertController.addTextField{ (textfield) in
            // засекретить ввод текста
            // textfield.isSecureTextEntry = true
        }
        alertController.addAction(action)
        self.present(alertController, animated: true, completion: nil)
    }
    
}

