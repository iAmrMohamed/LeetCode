class Solution {
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        var s = s.map { String($0) }
        var t = t.map { String($0) }
        
        var map = [String: String]()
        var map_t_s = [String: String]()
        
        for i in 0..<s.count {
            let sc = s[i]
            let tc = t[i]
            
            if map[sc] == nil && map_t_s[tc] == nil {
                map[sc] = tc
                map_t_s[tc] = sc
            } else if let c = map[sc], c != tc {
                return false
            } else if let c = map_t_s[tc], c != sc {
                return false
            }
        }
                
        return true
    }
}