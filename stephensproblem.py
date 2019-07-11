# head has next and a down method


# def flattenLinkedList(head):
#     # if head.down is None and head.next is None:
#     #     return head
#     # while head and head.next :
#     #     nextNode = head.next
#     #     if head.down:
#     #         last = flattenLinkedList(head.down) # returns tail
#     #         last.next = nextNode
#     #         head.next = head.down
#     #         head.down = None
#     #     head = nextNode
#     # return head

class Node:
    def __init__(self, val, next = None, down = None):
        self.next = next
        self.down = down
        self.val = val

n8 = Node(8)
n5 = Node(5)
n4 = Node(4, n5)
n3 = Node(3, n8, n4)
n2 = Node(2, n3)
n1 = Node(1, n2)

def printList(node):
    if node is None:
        return
    print(node.val)
    # printList(node.down)
    printList(node.next)


def printList2(node):
    if node is None:
        return
    print(node.val)
    printList2(node.next)


def flattenLinkedList(head):
    stack = [head]
    last = None
    while stack:
        if last is None:
            last = stack.pop()
        else:
            last.next = stack.pop()
            last = last.next
        if last.next:
            stack.append(last.next)
        if last.down:
            stack.append(last.down)
            last.down = None
    return head
        

printList(n1)
print(" ")
flattenLinkedList(n1)
printList2(n1)
