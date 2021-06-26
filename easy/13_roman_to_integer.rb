# 13. Roman to Integer
#
# Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.
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
# For example, 2 is written as II in Roman numeral, just two one's added together. 12 is written as XII, which is simply X + II. The number 27 is written as XXVII, which is XX + V + II.
#
# Roman numerals are usually written largest to smallest from left to right. However, the numeral for four is not IIII. Instead, the number four is written as IV. Because the one is before the five we subtract it making four. The same principle applies to the number nine, which is written as IX. There are six instances where subtraction is used:
#
# - I can be placed before V (5) and X (10) to make 4 and 9.
# - X can be placed before L (50) and C (100) to make 40 and 90.
# - C can be placed before D (500) and M (1000) to make 400 and 900.
#
# Given a roman numeral, convert it to an integer.

def roman_to_int(s)
  s = s.chars
  i = 0
  res = 0

  while i < s.size
    case s[i]
    when 'V'
      res += 5
    when 'L'
      res += 50
    when 'D'
      res += 500
    when 'M'
      res += 1000
    when 'I'
      case s[i + 1]
      when 'V'
        res += 4
        i += 1
      when 'X'
        res += 9
        i += 1
      else
        res += 1
      end
    when 'X'
      case s[i + 1]
      when 'L'
        res += 40
        i += 1
      when 'C'
        res += 90
        i += 1
      else
        res += 10
      end
    when 'C'
      case s[i + 1]
      when 'D'
        res += 400
        i += 1
      when 'M'
        res += 900
        i += 1
      else
        res += 100
      end
    end
    i += 1
  end
  res
end

p roman_to_int('III')      # 3
p roman_to_int('IV')       # 4
p roman_to_int('IX')       # 9
p roman_to_int('LVIII')    # 58
p roman_to_int('MCMXCIV')  # 1994
p roman_to_int('MMXXI')    # 2021
