# Given a 32-bit signed integer, reverse digits of an integer.
#
# Example 1:
#
# Input: 123
# Output: 321
# Example 2:
#
# Input: -123
# Output: -321
# Example 3:
#
# Input: 120
# Output: 21
# Note:
# Assume we are dealing with an environment which could only store integers
# within the 32-bit signed integer range: [−231,  231 − 1]. For the purpose
# of this problem, assume that your function returns 0 when the reversed integer overflows.


# @param {Integer} x
# @return {Integer}
def reverse(x)
    if x>=0
        x = x.to_s.split("").reverse.join('').to_i
    else
        x = x.to_s.split('')
        x = x[1..-1]
        x = x.reverse.unshift("-").join('').to_i
    end
    if x.abs > 2**31
        return 0
    else
        return x
    end
end
