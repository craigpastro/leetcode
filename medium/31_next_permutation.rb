# 31. Next Permutation
# Medium
#
# Implement next permutation, which rearranges numbers into the
# lexicographically next greater permutation of numbers.
#
# If such an arrangement is not possible, it must rearrange it as the lowest
# possible order (i.e., sorted in ascending order).
#
# The replacement must be in place and use only constant extra memory.

def next_permutation(nums)
  return if nums.size == 1

  # Find the pivot.
  i = nums.size - 2
  i -= 1 while nums[i] >= nums[i + 1] && i >= 0

  if i.negative?
    nums.reverse!
  else
    # Find what we will swap the pivot with.
    j = nums.size - 1
    j -= 1 while nums[j] <= nums[i] && j > i

    # Swap the pivot and this.
    nums[i], nums[j] = [nums[j], nums[i]]
    # Reverse the remainder of the list.
    nums[(i + 1)..] = nums[(i + 1)..].reverse
  end

  nil
end

l1 = [1, 2, 3]
next_permutation(l1)
p l1 # [1, 3, 2]

l2 = [3, 2, 1]
next_permutation(l2)
p l2 # [1, 2, 3]

l3 = [1, 1, 5]
next_permutation(l3)
p l3 # [1, 5, 1]

l4 = [1]
next_permutation(l4)
p l4 # [1]
