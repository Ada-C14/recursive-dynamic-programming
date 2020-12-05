# Superdigit

# Time Complexity - O(m log n) where n is the value of the passed in integer (and thus determines if the helper will be called... uh idk why I put it as "n" I just just know it is a variable that will determine if the helper method is called, potentially multiple times...), and m is the number of characters of the passed in integer
# Space Complexity - O(m log n)
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
  

# Time Complexity - O(m log n) for the same half baked reason as above, but for this algorithm, m is k*m, but since k is some constant, thus an O(1) operation, that can be simplified back to O(m log n).
# Space Complexity - O(m log n)
def refined_super_digit(n, k)
  n = (n.to_s * k).to_i   #I have no idea what the time/space complexity of a .to_s and then a .to_i operation are.
  if n < 10
    return n
  else
    return super_digit_helper(n, 0)
  end
end
    