import UIKit

/**
 Reverse a singly linked list.
 
 Example:
 
 Input: 1->2->3->4->5->NULL
 Output: 5->4->3->2->1->NULL
 Follow up:
 
 A linked list can be reversed either iteratively or recursively. Could you implement both?
 */

class ListNode: CustomStringConvertible {
    
    var val: Int
    var next: ListNode?
    
    init(_ val: Int) {
        self.val = val
        self.next = nil
    }
    
    var description: String {
        var str = ""
        var node: ListNode? = self
        var first: Bool = true
        while node != nil {
            str += first ? "\(node!.val)" : "->\(node!.val)"
            node = node!.next
            first = false
        }
        return str
    }
}

/// Iteratively
func reverseListByIteratively(_ head: ListNode?) -> ListNode? {
    var newHead: ListNode? = nil
    var tempHead = head
    while tempHead != nil {
        let next = tempHead!.next
        tempHead!.next = newHead
        newHead = tempHead
        tempHead = next
    }
    return newHead
}

/// Recursively
func reverseListByRecursively(_ head: ListNode?) -> ListNode? {
    return reverseByRecursively(head: head, newHead: nil)
}

func reverseByRecursively(head: ListNode?, newHead: ListNode?) -> ListNode? {
    if head == nil {
        return newHead
    }
    let next = head?.next
    head?.next = newHead
    return reverseByRecursively(head: next, newHead: head)
}

var node1 = ListNode(1)
var node2 = ListNode(2)
var node3 = ListNode(3)
var node4 = ListNode(4)
var node5 = ListNode(5)

node1.next = node2
node2.next = node3
node3.next = node4
node4.next = node5

print(reverseListByRecursively(node1)?.description)

