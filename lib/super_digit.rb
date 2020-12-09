# Superdigit

# Time Complexity - O(n) or O(logn)? I can't quite picture what the graph looks like with a massive number.
# Space Complexity - ?
def super_digit(n)
  raise TypeError, "n must be a positive integer" unless n.is_a?(Integer)
  raise ArgumentError, "n must be a positive integer!" if n < 0
  return super_digit_helper(n)
end
  

def super_digit_helper(n) #I didn't need this helper method, but upon setup figured it would be like the fib problem, so created it anyways. =p
  return n if n % 10 == n

  until n < 10
    sum = 0
    sum += (n % 10)
    sum += (n / 10)
    n = sum
  end
  return sum
end

# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)
    
end
    