class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var startIndex = nums.startIndex
        var secondIndex = nums.startIndex + 1

        while secondIndex <= nums.endIndex - 1 {
            if nums[startIndex] == nums[secondIndex] {
                nums.remove(at: secondIndex)
            } else {
                startIndex += 1
                secondIndex += 1
            }
        }

        return nums.count
    }
}