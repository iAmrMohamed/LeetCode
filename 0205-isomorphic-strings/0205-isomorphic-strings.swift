class Solution {
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        var s = s.map { String($0) }
        var t = t.map { String($0) }
        
        var map = [String: String]()
        var map_t_s = [String: String]()
        
        for i in 0..<s.count {
            if let c = map[s[i]], c != t[i] {
                return false
            }
            
            if let c = map_t_s[t[i]], c != s[i] {
                return false
            }
            
            map[s[i]] = t[i]
            map_t_s[t[i]] = s[i]
        }
        
        var mappedT = s.compactMap { map[$0] }
        
        return t == mappedT
    }
}