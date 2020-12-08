# Superdigit

# Time Complexity - O(n^2), where n is number of digits
# Space Complexity - O(n^2), where n is number of digits
def super_digit(n)
  return n if n < 10

  current = n
  sum = 0
  while current > 0
    sum += current%10
    current /= 10
  end

  return super_digit(sum)
end

puts "#{super_digit(30000008)}"


#
# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)

end

