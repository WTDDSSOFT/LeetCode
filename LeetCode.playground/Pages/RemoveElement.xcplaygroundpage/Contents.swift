//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
       nums = nums.filter{ $0 != val}

//       for i in 0..<nums.count - 1 {
//            if val == nums[i] {
//               let remove = nums.remove(at: i)
//            }
//         }
//       print(nums.count - 1)
       return nums.count
    }
}

var nums:Array = [3,2,2,3]
//var nums:Array = [0,1,2,2,3,0,4,2]
var val = 2

Solution().removeElement(&nums, val)
