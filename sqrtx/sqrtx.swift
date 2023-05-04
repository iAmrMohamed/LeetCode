class Solution {
    func mySqrt(_ x: Int) -> Int {
        guard x > 3 else {
            return x == 0 ? 0 : 1
        }
        
        var l = 0
        var r = x / 2
        
        while l <= r {
            let mid = (l + r) / 2
            let result = mid * mid
            
            if result == x {
                return mid
            }
            
            if result < x {
                l = mid + 1
            } else {
                r = mid - 1
            }
            
        }
        
        return r
    }
}