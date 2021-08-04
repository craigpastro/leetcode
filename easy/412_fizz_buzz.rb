# 412. Fizz Buzz
# Easy
#
# Given an integer n, return a string array answer (1-indexed) where:
# - answer[i] == "FizzBuzz" if i is divisible by 3 and 5.
# - answer[i] == "Fizz" if i is divisible by 3.
# - answer[i] == "Buzz" if i is divisible by 5.
# - answer[i] == i if non of the above conditions are true.

def fizz_buzz(n)
  (1..n).map do |i|
    if (i % 3).zero? && (i % 5).zero?
      'FizzBuzz'
    elsif (i % 3).zero?
      'Fizz'
    elsif (i % 5).zero?
      'Buzz'
    else
      i.to_s
    end
  end
end

p fizz_buzz(3)
p fizz_buzz(5)
p fizz_buzz(15)
