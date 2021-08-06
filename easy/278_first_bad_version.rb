# 278. First Bad Version
# Easy
#
# You are a product manager and currently leading a team to develop a new
# product. Unfortunately, the latest version of your product fails the quality
# check. Since each version is developed based on the previousversion, all the
# versions after a bad version are also bad.
#
# Suppose you have n versions [1, 2, ..., n] and you want to find out the first
# bad one, which causes all the following ones to be bad.
#
# You are given an API bool isBadVersion(version) which returns whether version
# is bad. Implement a function to find the first bad version. You should
# minimize the number of calls to the API.

def first_bad_version(n)
  helper(1, n)
end

def helper(low, high)
  return low if low == high

  mid = low + (high - low) / 2
  if is_bad_version(mid)
    helper(low, mid)
  else
    helper(mid + 1, high)
  end
end

def is_bad_version(n)
  
