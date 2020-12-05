# Superdigit

# Time Complexity - O(n log m) where n is the value of the passed in integer (and thus determines if the helper will be called... uh idk why I put it as "n" I just just know it is a variable that will determine if the helper method is called, potentially multiple times...), and m is the number of characters of the passed in integer
# Space Complexity - O(n log m)
def super_digit(n)
  if n < 10
    return n
  else
    return super_digit_helper(n, 0)
  end
end

def super_digit_helper(n, sum)
  sum += n % 10
  if n < 10
    return super_digit(sum)
  else
    return super_digit_helper(n / 10, sum)
  end
end
  

# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)
    
end
    