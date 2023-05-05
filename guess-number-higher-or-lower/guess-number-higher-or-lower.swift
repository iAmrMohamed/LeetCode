/** 
 * Forward declaration of guess API.
 * @param  num -> your guess number
 * @return 	     -1 if num is higher than the picked number
 *			      1 if num is lower than the picked number
 *               otherwise return 0 
 * func guess(_ num: Int) -> Int 
 */

class Solution : GuessGame {
    func guessNumber(_ n: Int) -> Int {
        var left = 0
        var right = n
        
        while left <= right {
            let mid = (left + right) / 2
            let result = guess(mid)
            
            if result == 0 {
                return mid
            } else if result == 1 {
                left = mid + 1
            } else if result == -1 {
                right = mid - 1
            }
        }
        
        return right
    }
}