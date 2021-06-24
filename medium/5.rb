# 5. Longest Palindromic Substring
#
# Given a string s, return the longest palindromic substring in s.

def longest_palindrome(s)
  res = ''
  (0..s.size).each do |i|
    temp_odd = expand_from(s, i, true)
    temp_even = expand_from(s, i, false)
    temp = if temp_odd.size > temp_even.size
             temp_odd
           else
             temp_even
           end
    res = temp if temp.size > res.size
  end
  res
end

def expand_from(s, index, odd)
  left = index
  right = if odd
            index
          else
            index + 1
          end

  return '' if !odd && (s[left] != s[right])

  loop do
    if (left - 1 >= 0) && (right + 1 < s.size) && (s[left - 1] == s[right + 1])
      left -= 1
      right += 1
    else
      break
    end
  end
  s[left..right]
end

s1 = 'babad'
p longest_palindrome(s1) # "bab" or "aba"

s2 = 'cbbd'
p longest_palindrome(s2) # "bb"

s3 = 'a'
p longest_palindrome(s3) # "a"

s4 = 'ac'
p longest_palindrome(s4) # "a"
