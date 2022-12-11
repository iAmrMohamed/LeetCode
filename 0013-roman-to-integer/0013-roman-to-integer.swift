class Solution {
    func romanToInt(_ s: String) -> Int {
        let map = [
            "I": 1,
            "V": 5,
            "X": 10,
            "L": 50,
            "C": 100,
            "D": 500,
            "M": 1000
        ]

        let s = s.map { String($0) }

        var result = [Int]()
        for i in s {
            if let last = result.last, map[i]! > last {
                result.removeLast()
                result += [map[i]! - last]
            } else {
                result += [map[i]!]
            }
        }

        return result.reduce(0, +)
    }
}