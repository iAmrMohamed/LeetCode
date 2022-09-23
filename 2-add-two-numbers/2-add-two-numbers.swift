/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */

class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    var l1 = l1
    var l2 = l2
    
    let dummyHead = ListNode()
    var curr: ListNode? = dummyHead
    var carry = 0
    
    repeat {
        let l1Value = l1?.val ?? 0
        let l2Value = l2?.val ?? 0
        
        let columnSum = l1Value + l2Value + carry
        carry = columnSum / 10
        
        curr?.next = ListNode(columnSum % 10)
        curr = curr?.next
        
        l1 = l1?.next
        l2 = l2?.next
    } while l1 != nil || l2 != nil || carry != 0
    
    return dummyHead.next
    }
}