//
//  main.swift
//  LeetCode
//
//  Created by santosw on 05/04/22.
//

import Foundation

class Solution {
    func romanToInt(_ s: String) -> Int {
        print("roma input",s)
        let arr = s.map { String($0) }
        print("map",arr)
        let dictArray = ["I":1,"V":5,"X":10,"L":50,"C":100,"D":500,"M":1000]
        print("dict",dictArray)
    
        var num = s.count - 1// array positon exemplo: 0 1 2
        print(num)
        var prev = 0
        var sum = 0
        
        while num >= 0 {
            guard let current = dictArray[arr[num]] else  {
                return sum
            }
            print("dictionary current ->",dictArray[arr[num]]!)
            
            if prev >  current  && prev > 0 {
                sum = sum - current
                print("- \(sum)")
            } else {
                sum = sum + current
                print("+ \(sum)")
            }
            prev = current
            num -= 1
        }
        
        return sum
    }
}


let romaInteger = Solution().romanToInt("IV")

print(romaInteger)
