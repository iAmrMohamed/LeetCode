class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        let s = s.map { String($0) }
    
        var longestSubstringCount = 0
        for i in 0..<s.count {
            var currentSubstringSet = Set<String>()
            currentSubstringSet.insert(s[i])

            for j in i + 1..<s.count {
                if currentSubstringSet.contains(s[j]) {
                    break
                } else {
                    currentSubstringSet.insert(s[j])
                }
            }

            if currentSubstringSet.count > longestSubstringCount {
                longestSubstringCount = currentSubstringSet.count
            }
        }

        return longestSubstringCount
    }
}