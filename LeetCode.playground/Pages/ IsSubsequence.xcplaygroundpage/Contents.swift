//: [Previous](@previous)

import UIKit
import Foundation

class Solution {
   func isSubsequence(_ s: String, _ t: String) -> Bool {

     var result: Bool = false
//      var chaS: Character? = nil
//      var charT: Character? = nil

//      for indexS in s {
//         for indexT in t {
//            guard let idxS = s.firstIndex(of: indexS) else { return false }
//            guard let idxT = t.firstIndex(of: indexT) else { return false }
//
//               let posS = s.distance(from: s.startIndex, to: idxS)
//               chaS = s[s.index(s.startIndex, offsetBy: posS)]
//               let posT = t.distance(from: t.startIndex, to: idxT)
//               charT = t[t.index(t.startIndex, offsetBy: posT)]
//
//            if chaS == charT {
//               print("Found  \(indexS) \(indexT)")
//               result = true
//            } else if chaS != charT  {
//               print("Not Found  \(indexS)  \(indexT)")
//               result = false
//            }
//         }
//      }
        var finalT: String = ""
        var checkArray = [Bool]()

        for index in s {
           finalT = t.filter { return  $0 == index }
           result = finalT == index.description ? true : false
           checkArray.append(result)
        }
        var final = checkArray.contains { $0 == false }

      if final == true {
         result = final
      } else if final == false {
         result = final
      }
      return result
   }
}
Solution().isSubsequence("abc", "ahbgdc")

