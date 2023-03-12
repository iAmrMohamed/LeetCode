class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        let s = s.map { String($0) }
        let t = t.map { String($0) }
        
        var answer = [String]()
        
        var sIndex = 0
        var tIndex = 0
        
        while sIndex < s.count && tIndex < t.count {
            if s[sIndex] == t[tIndex] {
                answer += [s[sIndex]]
                sIndex += 1
            }
            
            tIndex += 1
        }
        
        return answer == s
    }
}