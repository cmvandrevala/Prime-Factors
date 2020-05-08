import UIKit

public class PrimeFactors {
    
    public init() {}
    
    public func calculate(number: Int) -> [Int] {
        if number < 2 {
            return []
        }
        var primes: [Int] = []
        var remainder = number
        for candidate in 2...remainder {
            while (remainder % candidate == 0) {
                remainder /= candidate
                primes.append(candidate)
            }
        }
        return primes
        
    }
    
}
