class Solution {
    func timeEnough(time: [Int], givenTime: Int, totalTrips: Int) -> Bool {
        var actualTrips = 0

        for t in time {
            actualTrips += givenTime/t
        }

        return actualTrips >= totalTrips
    }

    func minimumTime(_ time: [Int], _ totalTrips: Int) -> Int {
        var left = 0
        var right = time[0] * totalTrips

        while left < right {
            let mid = (left + right) / 2

            if timeEnough(time: time, givenTime: mid, totalTrips: totalTrips) {
                right = mid
            } else {
                left = mid + 1
            }
        }

        return left
    }
}