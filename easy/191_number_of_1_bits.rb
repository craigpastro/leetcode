# 191. Number of 1 Bits
# Easy
#
# Write a function that takes an unsigned integer and returns the number of
# '1' bits it has (also known as the Hamming weight).

def hamming_weight(n)
  n.to_s(2).count('1')
end

puts hamming_weight(11)             # 3
puts hamming_weight(128)            # 1
puts hamming_weight(4_294_967_293)  # 31
