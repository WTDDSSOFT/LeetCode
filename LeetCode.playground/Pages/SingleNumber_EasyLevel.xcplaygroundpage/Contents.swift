//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

/*
 Given a non-empty array of integers nums, every element appears twice except for one. Find that single one.

 You must implement a solution with a linear runtime complexity and use only constant extra space.
 */
class Solution {

   func singleNumber(_ nums: [Int]) -> Int {
      var result = Set<Int>()

      for i in nums {
         if !result.insert(i).0 {
            result.remove(i)
         }
      }

      return result.first!
   }
}
//: [Next](@next)
Solution().singleNumber([2,2,1])
Solution().singleNumber([4,1,2,1,2])
Solution().singleNumber([4])
