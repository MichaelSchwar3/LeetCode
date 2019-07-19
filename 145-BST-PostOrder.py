# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, x):
#         self.val = x
#         self.left = None
#         self.right = None


class Solution:
    def postorderTraversal(self, root: TreeNode, array=None) -> List[int]:
        if array is None:
            array = []
        if root is None:
            return array
        self.postorderTraversal(root.left, array)
        self.postorderTraversal(root.right, array)
        array.append(root.val)
        return array
