# 12. Integer to Roman
# Medium
#
# Roman numerals are represented by seven different symbols: I, V, X, L, C,
# D and M.
#
# Symbol       Value
# I             1
# V             5
# X             10
# L             50
# C             100
# D             500
# M             1000
#
# For example, 2 is written as II in Roman numeral, just two one's added
# together. 12 is written as XII, which is simply X + II. The number 27 is
# written as XXVII, which is XX + V + II.
#
# Roman numerals are usually written largest to smallest from left to right.
# However, the numeral for four is not IIII. Instead, the number four is
# written as IV. Because the one is before the five we subtract it making
# four. The same principle applies to the number nine, which is written as
# IX. There are six instances where subtraction is used:
#
# - I can be placed before V (5) and X (10) to make 4 and 9.
# - X can be placed before L (50) and C (100) to make 40 and 90.
# - C can be placed before D (500) and M (1000) to make 400 and 900.
#
# Given an integer, convert it to a roman numeral.

def int_to_roman(num)
  res = []

  while num.positive?
    if num >= 1000
      num -= 1000
      res << 'M'
    elsif num >= 900
      num -= 900
      res << 'CM'
    elsif num >= 500
      num -= 500
      res << 'D'
    elsif num >= 400
      num -= 400
      res << 'CD'
    elsif num >= 100
      num -= 100
      res << 'C'
    elsif num >= 90
      num -= 90
      res << 'XC'
    elsif num >= 50
      num -= 50
      res << 'L'
    elsif num >= 40
      num -= 40
      res << 'XL'
    elsif num >= 10
      num -= 10
      res << 'X'
    elsif num >= 9
      num -= 9
      res << 'IX'
    elsif num >= 5
      num -= 5
      res << 'V'
    elsif num >= 4
      num -= 4
      res << 'IV'
    else
      num -= 1
      res << 'I'
    end
  end

  res.join
end

p int_to_roman(3)     # III
p int_to_roman(4)     # IV
p int_to_roman(9)     # IX
p int_to_roman(58)    # LVIII
p int_to_roman(1994)  # MCMXCIV
