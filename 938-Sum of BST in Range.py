    def rangeSumBST(self, root: TreeNode, L: int, R: int) -> int:
        sum = 0
        queue = [root]
        while len(queue) > 0:
            currentNode = queue.pop(0)
            if currentNode is not None and currentNode.val >= L and currentNode.val <= R:
                sum += currentNode.val
            if currentNode is not None:
                queue.append(currentNode.left)
                queue.append(currentNode.right)
        return sum