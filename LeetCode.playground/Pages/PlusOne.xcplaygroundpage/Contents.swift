//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"


class Solution {
   func plusOne(_ digits: [Int]) -> [Int] {
      guard !digits.isEmpty  else  { return [] }
      var result = digits

      for _ in digits { //O(n
         result = plusOneSum(digits)
      }

      return result
   }
}

func plusOneSum (_ digits: [Int]) -> [Int] {

   var SumArray = digits
   var index = digits.count - 1

   while index >= 0, digits[index] == 9 {
      SumArray[index] = 0
      index -= 1
   }

   if index == -1 {
      SumArray.insert(1, at: 0)
      return SumArray
   } else {
      SumArray[index] += 1
      return SumArray
   }
}

//: [Next](@next)
let digits = [1,2,3]
//let digits = [4,3,2,1]
//let digits = [0]
Solution().plusOne(digits)
