class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        let s = s.map { String($0) }

        var startIndex = 0
        var currentSubstringMap = [String: Int]()
        var longestSubstringCount = 0

        for (index, character) in s.enumerated() {
            if let currentIndex = currentSubstringMap[character] {
                for j in startIndex...currentIndex {
                    currentSubstringMap[s[j]] = nil
                }

                currentSubstringMap[character] = index
                startIndex = currentIndex + 1
            } else {
                currentSubstringMap[character] = index
            }

            longestSubstringCount = max(longestSubstringCount, currentSubstringMap.count)
        }

        return longestSubstringCount
    }
}