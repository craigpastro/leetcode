# 20. Valid Parentheses
#
# Given a string s containing just the characters '(', ')', '{', '}', '['
# and ']', determine if the input string is valid.
#
# An input string is valid if:
# 1. Open brackets must be closed by the same type of brackets.
# 2. Open brackets must be closed in the correct order.

def is_valid(s)
  t = []

  s.each_char do |c|
    t << c if ['(', '{', '['].include?(c)

    return false if [')', '}', ']'].include?(c) && (t.empty? || !match?(t.pop, c))
  end

  t.empty?
end

def match?(l, r)
  case l
  when '('
    r == ')'
  when '{'
    r == '}'
  when '['
    r == ']'
  else
    false
  end
end

p is_valid('()')      # true
p is_valid('()[]{}')  # true
p is_valid('(]')      # false
p is_valid('([)]')    # false
p is_valid('{[]}')    # true
