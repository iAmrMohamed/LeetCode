class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        var sum = [Int]()
        
        for num in nums {
            if let last = sum.last {
                sum.append(last + num)
            } else {
                sum.append(num)
            }
        }
        
        return sum
    }
}