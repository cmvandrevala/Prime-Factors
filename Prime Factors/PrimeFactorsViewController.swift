import UIKit

public class PrimeFactorsViewController: UIViewController {
    @IBOutlet var primeFactorsText: UITextField!
    @IBOutlet var primeFactorsOutput: UILabel!
    @IBAction func calculatePrimes() {
        primeFactorsOutput.text = primeFactorsText.text
    }
}
