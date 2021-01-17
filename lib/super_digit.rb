# Superdigit

# Time Complexity - O(n) where n is equal to the number of digits in the n-number passed in the method
# Space Complexity - O(n) where n is equal to the number of times the super_digit method is placed on the call stack
def super_digit(n)
  # first modulo (n % 10) and add to a counter(number)
  # until n%10 is equal 0

  total = 0
  until n % 10 == 0
    counter = n % 10
    total += counter
    n = n/10
  end

  if total > 9
    return super_digit(total)
  else
    return total
  end
end


# Time Complexity - O(n) where n is equal to the number of digits in the n-number passed in the super_digit method or the number of digits in the result-number passed in the super_digit method.
# Space Complexity - O(n) where n is equal to the number of times the suger_digit method is placed on the call stack
def refined_super_digit(n, k)
  if k == 1
    return super_digit(n)
  else
    result = super_digit(n)
    result *= k
    return super_digit(result)
  end
end