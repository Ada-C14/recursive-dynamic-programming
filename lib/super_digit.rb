# Superdigit

# Time Complexity - O(n)
# Space Complexity - O(n+m)
def super_digit(n)
  if n < 10
    return n
  else
    string = n.to_s
    sum_of_individual_characters = 0
    string.split("").each do |char|
      sum_of_individual_characters += char.to_i
    end
    super_digit(sum_of_individual_characters)
  end
end
#
# The base case is many digits does this number have
# If it's less than 10, return the digit
# Otherwise must add up digits
  

# Time Complexity - ?
# Space Complexity - ?
# def refined_super_digit(n, k)
#
# end
#