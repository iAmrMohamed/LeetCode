class Solution {
    func isCharacterMatch(character: Character, offsetBy: Int, in strs: [String]) -> Bool {
        for j in 1..<strs.count {
            let current = strs[j]

            guard !current.isEmpty else {
                return false
            }

            let currentIndex = current.index(
                current.startIndex,
                offsetBy: offsetBy,
                limitedBy: current.index(before: current.endIndex)
            )

            guard let currentIndex = currentIndex else {
                return false
            }

            if character != current[currentIndex] {
                return false
            }
        }

        return true
    }

    func longestCommonPrefix(_ strs: [String]) -> String {
        let first = strs[0]

        var result = ""
        for i in 0..<first.count {
            let index = first.index(first.startIndex, offsetBy: i)
            if isCharacterMatch(character: first[index], offsetBy: i, in: strs) {
                result += String(first[index])
            } else {
                break
            }
        }

        return result
    }
}