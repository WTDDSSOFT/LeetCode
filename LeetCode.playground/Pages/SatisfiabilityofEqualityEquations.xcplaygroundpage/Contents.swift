//: [Previous](@previous)

import Foundation

class Solution {
    func equationsPossible(_ equations: [String]) -> Bool {
        let equations = equations.map { Array($0) }
        var map = [Character: Int]()
        var nextId = 1

      // union - connect all variables that are equal
        for e in equations where e[1] == "=" {
            let (e0, e3) = (e[0], e[3])
            switch (map[e0], map[e3]) {
            case (nil, nil):
                map[e0] = nextId
                map[e3] = nextId
                nextId += 1
            case (let a, nil):
                map[e3] = map[e0]
            case (nil, let b):
                map[e0] = map[e3]
            case (let a, let b) where a != b:
                for (key, value) in map where value == b {
                    map[key] = a
                }
            default:
                break
            }
        }

      // find - discover any inequality assertion that is proveably false
        for e in equations where e[1] == "!" {
            let (e0, e3) = (e[0], e[3])
            guard e0 != e3 else { return false }
            if let a = map[e0], let b = map[e3], a == b {
                return false
            }
        }

      // no false inequalities? equations are possible
        return true
    }
}

var equations =  ["c==c","b==d","x!=z"]
Solution().equationsPossible(equations)
