# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, x):
#         self.val = x
#         self.next = None


class Solution:
    def swapPairs(self, head: ListNode) -> ListNode:
        if head is None or head.next is None:
            return head
        newHead = head.next
        currentNode = head
        prevNode = None
        while currentNode and currentNode.next is not None:
            if prevNode is not None:
                prevNode.next = currentNode.next
            node = currentNode.next.next
            currentNode.next.next = currentNode
            prevNode = currentNode
            currentNode.next = node
            currentNode = currentNode.next
        return newHead
