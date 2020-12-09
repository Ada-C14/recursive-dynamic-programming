# Superdigit

# Time Complexity - O(log n)
# Space Complexity - O(n)
def super_digit(n)
  return n if n.to_s.length == 1
  n = n.to_s.split("").map(&:to_i).inject(0) {|sum, x| sum + x}
  return super_digit(n)
end
  

# Time Complexity - ?
# Space Complexity - ?
# def refined_super_digit(n, k)
#
# end
#