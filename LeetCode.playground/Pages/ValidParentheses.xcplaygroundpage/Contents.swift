import Foundation

class Solution {
   var parenteheses: [Character : Character] = [
      "(":")",
      "{":"}",
      "[":"]",
   ]
   var parentheses_Stack: [Character] = []

   func isValid(_ s: String) -> Bool {
      for iElement in s {
         if let _ = parenteheses[iElement] {
            parentheses_Stack.append(iElement)
         } else {
            if let popElement = parentheses_Stack.popLast(),
               iElement == parenteheses[popElement] {
                  continue
            } else {
               return false
            }
         }
      }
      return parentheses_Stack.isEmpty
   }
}
Solution().isValid("()")

