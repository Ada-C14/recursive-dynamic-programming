# Superdigit

# Time Complexity - O(n)
# Space Complexity - O(1)
def super_digit(n)
  return n if n < 10
  super_digit(n.digits.sum)
end

# Time Complexity - O(n)
# Space Complexity - O(1) I'm not sure with these space complexities. methods like .split or .digit... are they O(n)?
def refined_super_digit(n, k)
  return n if n < 10
  super_digit(n.digits.sum * k) # k magic hint from https://www.hackerrank.com/challenges/super-digit/forum
end