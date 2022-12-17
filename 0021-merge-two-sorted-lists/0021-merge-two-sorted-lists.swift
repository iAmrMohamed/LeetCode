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
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        var firstNode = list1
        var secondNode = list2

        let dummyHead = ListNode()
        var currentNode: ListNode? = dummyHead

        while firstNode != nil || secondNode != nil {
            if let first = firstNode, let second = secondNode {
                if first.val <= second.val {
                    currentNode?.next = ListNode(first.val)
                    firstNode = firstNode?.next
                } else {
                    currentNode?.next = ListNode(second.val)
                    secondNode = secondNode?.next
                }

            } else if let first = firstNode {
                currentNode?.next = ListNode(first.val)
                firstNode = firstNode?.next
            } else if let second = secondNode {
                currentNode?.next = ListNode(second.val)
                secondNode = secondNode?.next
            }

            currentNode = currentNode?.next
        }

        return dummyHead.next
    }
}