class Solution {
    func isPalindrome(_ s:  [String]) -> Bool {
        var l1 = s.startIndex
        var l2 = s.endIndex - 1

        while l1 < l2 {
            if s[l1] != s[l2] {
                return false
            }

            l1 += 1
            l2 -= 1
        }

        return true
    }

    func longestPalindrome(_ s: String) -> String {
        let array = s.map { String($0) }

        var result = [String]()

        for i in 0..<array.count {
            var substring = [String]()
            for j in i..<array.count {
                substring.append(array[j])
                if isPalindrome(substring) {
                    if substring.count > result.count {
                        result = substring
                    }
                }
            }
        }

        return result.joined()
    }
}