# 50. Pow(x, n)
# Medium
#
# Implement pow(x, n), which calculates x raised to the power n (i.e., x^n).

def my_pow(x, n)
  if n.zero?
    1.0
  elsif n == 1
    x
  elsif n.negative?
    1 / my_pow(x, -n)
  elsif n.odd?
    x * my_pow(x, n - 1)
  else
    my_pow(x * x, n / 2)
  end
end

puts my_pow(2.00000, 10) # 1024.00000
puts my_pow(2.10000, 3) # 9.26100
puts my_pow(2.00000, -2) # 0.25000
