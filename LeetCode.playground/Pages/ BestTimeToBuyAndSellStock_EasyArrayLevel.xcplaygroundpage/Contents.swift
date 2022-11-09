//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
       return prices.reduce((0, prices[0])) { (max($0.0, $1 - $0.1) , min($0.1, $1)) }.0
    }
}

Solution().maxProfit([7,1,5,3,6,4])
