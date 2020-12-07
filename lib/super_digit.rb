# Superdigit

# Time Complexity - O(log n)
# Space Complexity - O(n)- relies on the call stack to pop up
def super_digit(n)
  return n if n / 10 == 0

  sum = 0
  until n.to_f / 10 == 0
    sum += n % 10
    n /= 10
  end

  super_digit(sum)
end

# Time Complexity - O(n) - turning the n to a string and then back again
# Space Complexity - O(n) due to the call stack
def refined_super_digit(n, k)
  n = (n.to_s * k).to_i
  super_digit(n)
end



    