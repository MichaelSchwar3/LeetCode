class Solution:
    def inorderTraversal(self, root: TreeNode, array=None) -> List[int]:
        if array is None:
            array = []
        if root is None:
            return array
        self.inorderTraversal(root.left, array)
        array.append(root.val)
        self.inorderTraversal(root.right, array)
        return array
