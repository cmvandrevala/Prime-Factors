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
    
}
