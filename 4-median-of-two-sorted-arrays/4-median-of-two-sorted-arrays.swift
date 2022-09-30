class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        let result = (nums1 + nums2).map { Double($0) }.sorted()
        let count = result.count

        let output: Double
        if count % 2 == 0 {
            let index1 = count/2
            let index2 = index1 - 1
            output = (result[index1] + result[index2]) / 2
        } else {
            output = result[abs(count/2)]
        }

        return output
    }
}