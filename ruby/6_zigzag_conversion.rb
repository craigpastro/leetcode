# 6. ZigZag Conversion
# Medium
#
# The string "PAYPALISHIRING" is written in a zigzag pattern on a given number
# of rows like this:
#
# P   A   H   N
# A P L S I I G
# Y   I   R
#
# And then read line by line: "PAHNAPLSIIGYIR"

def convert(s, num_rows)
  rows = Array.new(num_rows) { '' }
  down = true
  i = 0

  s.each_char do |c|
    rows[i] << c
    i += down ? 1 : -1

    if i == num_rows || i.negative?
      down = !down
      i += down ? 2 : -2
    end
  end

  rows.join
end

puts convert('PAYPALISHIRING', 3) # 'PAHNAPLSIIGYIR'
puts convert('PAYPALISHIRING', 4) # 'PINALSIGYAHRPI'
puts convert('A', 1)              # 'A'
