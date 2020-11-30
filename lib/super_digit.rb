# Superdigit
# constraints from https://www.hackerrank.com/challenges/super-digit/problem
# n >= 1
# for refined problem assume n >= 1, k >= 1

# Time Complexity - O(n)
# Space Complexity - O(n) - n_array will be have n number of values
def super_digit(n)
  n = n.to_i if n.class != Integer
  return n if n < 10

  # n_array = n.digits ~ I think this is worse time?
  n_array = n.to_s.chars.map(&:to_i)
  result = n_array.sum
  return super_digit(result)
end


# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)
  return n if n < 10
  n = n.to_s
  n *= k
  return super_digit(n)

end
