class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var answer = [Int](repeating: 1, count: nums.count)
        
        var left = [Int](repeating: 0, count: nums.count)
        var right = [Int](repeating: 0, count: nums.count)
        
        left[0] = 1
        for i in 1..<nums.count {
            left[i] = nums[i-1] * left[i-1]
        }
        
        right[right.count - 1] = 1
        for i in (0..<nums.count - 1).reversed() {
            right[i] = nums[i+1] * right[i+1]
        }
        
        for i in 0..<nums.count {
            answer[i] = left[i] * right[i]
        }
        
        return answer
    }
}