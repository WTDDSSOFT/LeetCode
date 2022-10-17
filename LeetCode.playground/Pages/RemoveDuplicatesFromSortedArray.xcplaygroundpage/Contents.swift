//: [Previous](@previous)

import Foundation

//: [Next](@next)

class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
       // verifica se nums esta vazio
       // check is nums it's empity
       guard !nums.isEmpty else { return 0 }
       // criamos um novo array, remove os elementos duplicados com o set já ordenados em orde cresente
       // create array with remove duplicates numbers with Set, whiout to no-descresing order!
       nums = Array(Set(nums)).sorted()
       // retoramos  a quantidade de elementos.
       // return count of elements.
       return nums.count
    }
}
var numbers = [0,0,1,1,1,2,2,3,3,4]
Solution().removeDuplicates(&numbers)
