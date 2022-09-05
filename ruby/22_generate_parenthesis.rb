# 22. Generate Parentheses
# Medium
#
# Given n pairs of parentheses, write a function to generate all combinations
# of well-formed parentheses.

def generate_parenthesis(n)
  helper(n, n, [])
end

def helper(m, n, s)
  return [s.join] if m.zero? && n.zero?

  l1 = m.positive? ? helper(m - 1, n, s.clone << '(') : []
  l2 = n > m ? helper(m, n - 1, s << ')') : []

  l1.concat(l2)
end

p generate_parenthesis(3) # ["((()))","(()())","(())()","()(())","()()()"]
p generate_parenthesis(1) # ["()"]
