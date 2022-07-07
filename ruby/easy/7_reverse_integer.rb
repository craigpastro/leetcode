# 7. Reverse Integer
# Easy
#
# Given a signed 32-bit integer x, return x with its digits reversed. If
# reversing x causes the value to go outside the signed 32-bit integer
# range [-2**31, 2**31 - 1], then return 0.

def reverse(x)
  res = 0
  neg = false

  if x.negative?
    neg = true
    x = -x
  end

  while x.positive?
    res = (res * 10) + (x % 10)
    x /= 10
  end

  res = -res if neg

  if res < -(2**31 - 1) || res > 2**31
    0
  else
    res
  end
end

puts reverse(123)   # 321
puts reverse(-123)  # -321
puts reverse(120)   # 21
puts reverse(0)     # 0
