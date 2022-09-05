# 17. Letter Combinations of a Phone Number
# Medium
#
# Given a string containing digits from 2-9 inclusive, return all possible
# letter combinations that the number could represent. Return the answer in
# any order.
#
# A mapping of digit to letters (just like on the telephone buttons) is
# given below. Note that 1 does not map to any letters.

def letter_combinations(digits)
  if digits.empty?
    []
  elsif digits.size == 1
    PHONE_MAP[digits]
  else
    digits.chars.map { |d| PHONE_MAP[d] }.reduce(&:product).map(&:join)
  end
end

PHONE_MAP =
  {
    '2' => %w[a b c],
    '3' => %w[d e f],
    '4' => %w[g h i],
    '5' => %w[j k l],
    '6' => %w[m n o],
    '7' => %w[p q r s],
    '8' => %w[t u v],
    '9' => %w[w x y z]
  }.freeze

p letter_combinations('23') # ["ad", "ae", "af", "bd", "be", "bf", "cd", "ce", "cf"]
p letter_combinations('')   # []
p letter_combinations('2')  # ["a", "b", "c"]
