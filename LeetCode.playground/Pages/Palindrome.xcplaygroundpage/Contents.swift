//: [Previous](@previous)

import Foundation

//func isPalindrome(_ str: String) -> Bool {
//    let strippedString = str.replacingOccurrences(of: "\\W", with: "", options: .regularExpression, range: nil)
//    let length = strippedString.count
//
//    if length > 1 {
//        return palindrome(strippedString.lowercased(), left: 0, right: length - 1)
//    }
//
//    return false
//}
//
//private func palindrome(_ str: String, left: Int, right: Int) -> Bool {
//    if left >= right {
//        return true
//    }
//
//    let lhs = str[str.index(str.startIndex, offsetBy: left)]
//    let rhs = str[str.index(str.startIndex, offsetBy: right)]
//
//    if lhs != rhs {0
//        return false
//    }
//
//    return palindrome(str, left: left + 1, right: right - 1)
//}

class Solution {

   func partition(_ s: String) -> [[String]] {
      var subString = [String]()
      var allsubString = [[String]]()

      generateSubstring(Array(s), 0, &subString, &allsubString)
      return allsubString
   }

   private func generateSubstring(
         _ s:[Character],
         _ start: Int,
         _ subString: inout [String],
         _ allsubString: inout [[String]]
   ) {

      if start ==  s.count {
         allsubString.append(subString)
      } else {

         var partialString = ""

         for index in start..<s.count {
            partialString.append(s[index])
            if isPalindrome(start, index, s) {
               subString.append(partialString)
               generateSubstring(s, index + 1, &subString, &allsubString)
               subString.removeLast()
            }
         }
      }
   }

   func isPalindrome(_ start: Int, _ end: Int, _ str: [Character]) -> Bool {
         var start = start
         var end = end

         while start < end {
             if str[start] != str[end] { return false }
             start += 1
             end -= 1
         }
         return true
     }
}

var s = "aab"
Solution().partition(s)
