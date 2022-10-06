class Solution {
    func isPalindrome(_ s:  [String]) -> Bool {
        var start = s.startIndex
        var end = s.endIndex - 1

        while start < end {
            if s[start] != s[end] {
                return false
            }

            start += 1
            end -= 1
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