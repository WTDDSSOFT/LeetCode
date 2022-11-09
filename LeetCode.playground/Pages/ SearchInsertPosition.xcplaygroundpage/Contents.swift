//: [Previous](@previous)

import Foundation


class Solution {
   func searchInsert(_ nums: [Int], _ target: Int) -> Int {
      var left = 0
      var right = nums.count - 1
      var mid = 0

      while right >= left {
         mid = (left + right) / 2
         if nums[mid] == target {
            return mid
         } else if target > nums[mid]  {
            left = mid + 1
         } else {
            right = mid - 1
         }
      }

      if target > nums[mid]  {
         return mid + 1
      } else {
         return mid
      }
   }
}
let nums = [1,3,5,6], target = 7
//let nums = [1,3,5,6], target = 2
Solution().searchInsert(nums,target)
//: [Next](@next)
