# Superdigit

# Time Complexity - O(n)
# Space Complexity - O(log(n))
def super_digit(n)
  return n.abs if n.abs < 10

  solution = 0
  until n.zero? do
    solution += n % 10
    n = n/10
    # puts "n is equal to #{n}"
    # puts "solution is equal to #{solution}"
  end

  # puts "sum is equal to #{solution}"

  return super_digit(solution)
end

# puts super_digit(9875)
  

# Time Complexity - O(n)
# Space Complexity - O(log(n))
def refined_super_digit(n, k)
  return n.abs if n.abs < 10

  solution = 0
  until n.zero? do
    solution += n % 10
    n = n/10

    puts "solution is equal to #{solution}"
    puts "n is equal to #{n}"

  end

  solution *= k
   puts "sum is equal to #{solution}"

  return refined_super_digit(solution, 1)
end

puts refined_super_digit(148, 3)