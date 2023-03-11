class Solution {
    func pivotIndex(_ nums: [Int]) -> Int {
        for i in 0..<nums.count {
            
            var leftSum = 0
            for j in 0..<i {
                leftSum += nums[j]
            }
            
            var rightSum = 0
            for j in i+1..<nums.count {
                rightSum += nums[j]
            }
            
            if leftSum == rightSum {
                return i
            }
            
        }
        
        return -1
    }
}