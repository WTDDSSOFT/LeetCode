//: [Previous](@previous)

import Foundation

class Solution {

   func twoSum(_ nums: [Int], _ target: Int) -> [Int] {

      var sumNumber: Int = 0
      for i in 0..<nums.count - 1 {
         sumNumber = target - nums[i]
         for j in i + 1..<nums.count {
            if nums[j] == sumNumber {
               return [i, j]
            }
         }
      }
      return [-1,-1]
   }
}

var nums = [2,7,11,15]
var target = 9

Solution().twoSum(nums, target)
