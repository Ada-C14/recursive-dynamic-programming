# Superdigit

# Time Complexity - O(n)
# Space Complexity - O(n)
def super_digit(n)
  return n if n < 10
  super_digit(1 +((n-1) % 9)) # aha!!
end

# Time Complexity - O(n)
# Space Complexity - O(n) ? its not making a new string at each call, just makes 1 new string at the beginning, and then converts to a number. so I'm thinking O(n) because O(n^2) seems kind of extreme. And I'm not sure how log n or n log n would apply in this situation either.
def refined_super_digit(n, k)
  num = ""  # better way to do this w/o making new string???
  k.times do
    num += n.to_s
  end
  n = num.to_i
  super_digit(n)
end

