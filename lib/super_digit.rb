# Superdigit

# Time Complexity - O(n)
# Space Complexity - O(log(n))
def super_digit(n)
  return n.abs if n.abs < 10

  solution = 0
  n.abs.to_s.length.times do
    solution += n % 10
    n = n/10
    # puts "n is equal to #{n}"
    # puts "solution is equal to #{solution}"
  end

  # puts "sum is equal to #{solution}"

  return super_digit(solution)
end

# puts super_digit(9875)
  

# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)
    
end
    