# 345. Reverse Vowels of a String
# Easy
#
# Given a string s, reverse only all the vowels in the string and return it.
#
# The vowels are 'a', 'e', 'i', 'o', and 'u', and they can appear in both
# cases.

def reverse_vowels(s)
  vowels = []
  chars = s.chars

  chars.each do |c|
    vowels << c if %w[a e i o u].include?(c.downcase)
  end

  (0...chars.size).each do |i|
    chars[i] = vowels.pop if %w[a e i o u].include?(chars[i].downcase)
  end

  chars.join
end

puts reverse_vowels('hello') # "holle"
puts reverse_vowels('leetcode')  # "leotcede"
