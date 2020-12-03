# Superdigit

# Time Complexity - O(mn) - m = number of times super_digit is called, n = number of digits in n
# Space Complexity - O(n)
def super_digit(n)
  return n if n % 10 == n

  sum = 0
  until n < 10
    dividend, quotient = n.divmod(10)
    sum += quotient
    n = dividend
  end
  sum += n

  return super_digit(sum)
end


# Time Complexity - O(nm) - m = number of times refined_super_digit is called, n = number of digits in n
# Space Complexity - O(n)
def refined_super_digit(n, k)
  return n if n % 10 == n

  sum = 0
  until n < 10
    dividend, quotient = n.divmod(10)
    sum += quotient
    n = dividend
  end
  sum += n

  return super_digit(sum * k)

end
    