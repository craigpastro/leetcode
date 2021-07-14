# 168. Excel Sheet Column Title
# Easy
#
# Given an integer column_number, return its corresponding column title as it
# appears in an Excel sheet.
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

def convert_to_title(column_number)
  a = 'A'.ord
  res = ''

  while column_number.positive?
    column_number -= 1
    res = (column_number % 26 + a).chr + res
    column_number /= 26
  end

  res
end

puts column_number(1)             # 'A'
puts column_number(28)            # 'AB'
puts column_number(701)           # 'ZY'
puts column_number(2_147_483_647) # 'FXSHRXW'
