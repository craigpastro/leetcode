# 171. Excel Sheet Column Number
# Easy
#
# Given a string column_title that represents the column title as appear in
# an Excel sheet, return its corresponding column number.
#
# For example:
# A -> 1
# B -> 2
# C -> 3
# ...
# Z -> 26
# AA -> 27
# AB -> 28
# ...

def title_to_number(column_title)
  a = 'A'.ord
  res = 0

  column_title.each_char do |c|
    res = res * 26 + (c.ord - a) + 1
  end

  res
end

puts title_to_number('A')        # 1
puts title_to_number('AB')       # 28
puts title_to_number('ZY')       # 701
puts title_to_number('FXSHRXW')  # 2147483647
