def arrayMaximalAdjacentDifference(inputArray)
    largest = 0
    inputArray.each_cons(2) do |x|
        diff = (x[0] - x[1]).abs
        largest = diff if diff > largest
    end
    largest
end


# Given an array of integers, find the maximal absolute difference between any two of its adjacent elements.
#
# Example
#
# For inputArray = [2, 4, 1, 0], the output should be
# arrayMaximalAdjacentDifference(inputArray) = 3.
#
# Input/Output
#
# [execution time limit] 4 seconds (rb)
#
# [input] array.integer inputArray
#
# Guaranteed constraints:
# 3 ≤ inputArray.length ≤ 10,
# -15 ≤ inputArray[i] ≤ 15.
#
# [output] integer
#
# The maximal absolute difference.
