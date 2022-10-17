//: [Previous](@previous)

import Foundation

class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
       var runningSum = nums
       print(runningSum)
       for i in 0..<runningSum.count - 1 {
          runningSum[i + 1] = runningSum[i] + runningSum[i + 1]
          print(runningSum)
       }
       return runningSum
    }
}

var nums = [1,2,3,4]
Solution().runningSum(nums)
//: [Next](@next)
