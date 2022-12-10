class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        var x = x
    
        if x < 0 || (x % 10 == 0 && x != 0) {
            return false
        }

        var revertedNumber = 0
        while x > revertedNumber {
            revertedNumber = revertedNumber * 10 + x % 10
            x /= 10
        }

        return x == revertedNumber || x == revertedNumber/10
    }
}