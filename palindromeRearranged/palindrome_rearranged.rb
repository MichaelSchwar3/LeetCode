def palindromeRearranging(inputString)
    seen = Hash.new(0)
    return true if inputString.length <= 1
    inputString.chars.each do |ch|
        seen[ch] +=1
    end
    count = 0
    inputString.chars.each do |ch|
        if seen[ch] % 2 != 0
            count+=1
        end
    end
    return seen.select { |k, v| v % 2 != 0 }.size <= 1
end


#
# Given a string, find out if its characters can be rearranged to form a palindrome.
#
# Example
#
# For inputString = "aabb", the output should be
# palindromeRearranging(inputString) = true.
#
# We can rearrange "aabb" to make "abba", which is a palindrome.
#
# Input/Output
#
# [execution time limit] 4 seconds (rb)
#
# [input] string inputString
#
# A string consisting of lowercase English letters.
#
# Guaranteed constraints:
# 1 ≤ inputString.length ≤ 50.
#
# [output] boolean
#
# true if the characters of the inputString can be rearranged to form a palindrome, false otherwise.
