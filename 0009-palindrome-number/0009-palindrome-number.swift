class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        let array = String(x).map { String($0) }
        
        var start = array.startIndex
        var end = array.endIndex - 1
        
        while start < end {
            if array[start] != array[end] {
                return false
            }
            
            start += 1
            end -= 1
        }
        
        return true
    }
}