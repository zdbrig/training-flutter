
import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label = UILabel()
        label.text = "Hello, Swift!"
        label.center = view.center
        view.addSubview(label)
        
        let button = UIButton(type: .system)
        button.setTitle("Press Me", for: .normal)
        button.frame = CGRect(x: 100, y: 200, width: 100, height: 50)
        view.addSubview(button)
    }
}
