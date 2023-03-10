class Solution {
    func minimumTime(_ time: [Int], _ totalTrips: Int) -> Int {
        var answer = 0
        var left = 0
        var right = time[0] * totalTrips
        
        while left <= right {
            let mid = (left + right) / 2
            var count = 0
            
            for i in time {
                count += mid/i
                
                if count > totalTrips {
                    break
                }
            }
            
            if count >= totalTrips {
                right = mid - 1
                answer = mid
            } else {
                left = mid+1
            }
            
        }
        
        return answer
    }
}