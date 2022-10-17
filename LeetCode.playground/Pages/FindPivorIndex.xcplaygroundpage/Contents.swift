//: [Previous](@previous)

import Foundation

class Solution {
   func pivotIndex(_ nums: [Int]) -> Int {
      var leftSum: Int = 0
      var sum:Int = 0

      for i in nums { sum += i }
      for j in 0..<nums.count {
         if leftSum == sum - leftSum - nums[j] {
            return j
         }
         leftSum += nums[j]
       }
      return -1
   }
}

var nums = [1,7,3,6,5,6]
Solution().pivotIndex(nums)
