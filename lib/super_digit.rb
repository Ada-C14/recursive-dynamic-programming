# Superdigit

# Time Complexity - O(n^2)
# Space Complexity - O(n^2)
def super_digit(n)
  n_array = n.to_s.split("").map{|x| x.to_i}                       # Time: O(n) Space: O(n)
  return n_array[0] if n_array.length == 1
  super_digit(n_array.sum)                                         # Time: O(n) 
end
  

# Time Complexity - O(n^2)?
# Space Complexity - O(n^2)?
def refined_super_digit(n, k)
  sd = super_digit(n)                                               # Time: O(n^2) Space: O(n^2)
  return super_digit(sd * k)                                        # Time: O(n^2) Space: O(n^2)
end
