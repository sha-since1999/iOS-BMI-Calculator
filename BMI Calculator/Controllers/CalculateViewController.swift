
import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }
 
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    @IBAction func heightSliderChanger(_ sender: UISlider) {
    
    heightLabel.text = "\(String(format: "%.2f", sender.value)) m"
    }
    
    @IBAction func weightSliderChangeer(_ sender: UISlider) {
    
    // use this if u want to round off last digits
        weightLabel.text = "\(Int(sender.value))Kg"
    }
    
    var calculatorbrain = CalculatorBrain()
    @IBAction func calculateBmi(_ sender: UIButton) {
    
    let height = heightSlider.value
    let weight = weightSlider.value

    calculatorbrain.calculateBmi(height:height ,weight: weight)
    
        
//        --------->>>>>> this is implementation  of seccond view control  by yourself custom coding
        
//    let secondvc = secondViewController()
//    secondvc.bmi = String(format: "%.2f",BMI)
//    self.present(secondvc, animated: true, completion: nil)
     
        
    //_________----------->>>>>> now this  is conection  using stroyboard segue
        
    self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue : UIStoryboardSegue , sender : Any?)
    {
        if segue.identifier == "goToResult"
        {   let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmi = calculatorbrain.getBmi()
        }
    }
}
