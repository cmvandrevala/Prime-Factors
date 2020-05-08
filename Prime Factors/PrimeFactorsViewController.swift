import UIKit

public class PrimeFactorsViewController: UIViewController {
    @IBOutlet public var primeFactorsText: UITextField!
    @IBOutlet public var primeFactorsOutput: UILabel!
    @IBAction public func calculatePrimes() {
        let primeFactors = PrimeFactors()
        let input = primeFactorsText.text
        if let input = input {
            if let parsedInput = Int(input) {
                let factors = primeFactors.calculate(number: parsedInput)
                primeFactorsOutput.text = factors.map { factor in
                    String(factor)
                }.joined(separator: ", ")
            } else {
                primeFactorsOutput.text = "Please enter a number"
            }
        }
        
    }
}
