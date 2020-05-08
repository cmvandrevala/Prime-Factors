import XCTest
import Prime_Factors

class PrimeFactorsViewControllerTests: XCTestCase {

    func testLoadingControllerFromStoryboardSetsOutlets() {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let controller: PrimeFactorsViewController? = storyboard.instantiateViewController(identifier: "PrimeFactorsViewController") as? PrimeFactorsViewController
        
        controller?.loadView()
        
        XCTAssertNotNil(controller)
        XCTAssertNotNil(controller?.primeFactorsText)
        XCTAssertNotNil(controller?.primeFactorsOutput)
    }
    
    func testClickingGeneratePrimesCalculatesSomePrimes() {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let controller: PrimeFactorsViewController? = storyboard.instantiateViewController(identifier: "PrimeFactorsViewController") as? PrimeFactorsViewController
        controller?.loadView()
        controller?.primeFactorsText.text = "\(2 * 2 * 2 * 3 * 5 * 5)"
        
        controller?.calculatePrimes()
        
        XCTAssertEqual("2, 2, 2, 3, 5, 5", controller?.primeFactorsOutput.text)
    }
    
    func testClickingGenerateFails() {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
               let controller: PrimeFactorsViewController? = storyboard.instantiateViewController(identifier: "PrimeFactorsViewController") as? PrimeFactorsViewController
               controller?.loadView()
               controller?.primeFactorsText.text = "not a number"
               
               controller?.calculatePrimes()
               
               XCTAssertEqual("Please enter a number", controller?.primeFactorsOutput.text)
    }
}
