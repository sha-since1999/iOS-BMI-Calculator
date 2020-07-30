

// this is second stroyboar connection and controller useing custom programming
// by writing and understanding full coding concept

import UIKit
class secondViewController: UIViewController {
     var bmi = "0.0"
    override func viewDidLoad() {
    view.backgroundColor = .red
    super.viewDidLoad()
   
    let label = UILabel()
    label.text = " \(bmi) BMI "
    label.frame = CGRect(x: 100, y: 300, width: 300, height: 50)
        view.addSubview(label)
    
    }

}
