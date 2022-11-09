//: [Previous](@previous)

import Foundation

//: [Next](@next)
class Solution {
   func buildArray(_ nums: [Int]) -> [Int]  {
      var ans = nums
      // my solution wthiout considere Big O notation
///      for i in 0..<nums.count {
///         ans[i] = nums[nums[i]]
///      }
///      return ans
      return nums.indices.map { nums[nums[$0]] } //O (1)
   }
}
var nums = [0,2,1,5,3,4]
Solution().buildArray(nums)
