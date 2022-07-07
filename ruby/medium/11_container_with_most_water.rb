# 11. Container With Most Water
# Medium
#
# Given n non-negative integers a1, a2, ..., an , where each represents a point at coordinate (i, ai). n vertical lines are drawn such that the two endpoints of the line i is at (i, ai) and (i, 0). Find two lines, which, together with the x-axis forms a container, such that the container contains the most water.
#
# Notice that you may not slant the container.
# Given n non-negative integers a1, a2, ..., an , where each represents a point at coordinate (i, ai). n vertical lines are drawn such that the two endpoints of the line i is at (i, ai) and (i, 0). Find two lines, which, together with the x-axis forms a container, such that the container contains the most water.
#
# Notice that you may not slant the container.

def max_area(height)
  left = 0
  right = height.size - 1
  max_area = 0

  while left < right
    max_area = [[height[left], height[right]].min * (right - left), max_area].max
    if height[left] < height[right]
      left += 1
    else
      right -= 1
    end
  end

  max_area
end

p max_area([1, 8, 6, 2, 5, 4, 8, 3, 7]) # 49
p max_area([1, 1])                      # 1
p max_area([4, 3, 2, 1, 4])             # 16
p max_area([1, 2, 1])                   # 2
