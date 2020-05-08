import XCTest
import Prime_Factors

class PrimeFactorsTests: XCTestCase {

    func testCalculatePrimesHasNoFactorsForOne() {
        let primes: [Int] = PrimeFactors().calculate(number: 1)
        
        XCTAssertEqual([], primes)
    }
    
    func testCalculatePrimesFactorsTwo() {
        let primes: [Int] = PrimeFactors().calculate(number: 2)
        
        XCTAssertEqual([2], primes)
    }
    
    func testCalculatePrimesFactorsThree() {
        let primes: [Int] = PrimeFactors().calculate(number: 3)
        
        XCTAssertEqual([3], primes)
    }
    
    func testCalculatePrimesFactorsFour() {
        let primes: [Int] = PrimeFactors().calculate(number: 4)
        
        XCTAssertEqual([2, 2], primes)
    }
    
    func testCalculatePrimesFactorsSix() {
        let primes: [Int] = PrimeFactors().calculate(number: 6)
        
        XCTAssertEqual([2, 3], primes)
    }
    
    func testCalculatePrimesFactorsEight() {
        let primes: [Int] = PrimeFactors().calculate(number: 8)

        XCTAssertEqual([2, 2, 2], primes)
    }
    
    func testCalculatePrimesFactorsNine() {
          let primes: [Int] = PrimeFactors().calculate(number: 9)
          
          XCTAssertEqual([3, 3], primes)
      }

}
