class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        if s.isEmpty {
            return true
        }
        
        var iterator = s.makeIterator()
        var current = iterator.next()
        
        for c in t {
            if c == current {
                current = iterator.next()
                
                if current == nil {
                    return true
                }
            }
        }
        
        return false
    }
}