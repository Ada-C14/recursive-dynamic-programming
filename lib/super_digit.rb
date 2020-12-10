# Superdigit

# Time Complexity - O(n) if n is magnitude of number
# Space Complexity - O(n)
def super_digit(n)

  if n < 10
    return n
  end

  sum = 0
  until n == 0
    p = n % 10
    n = n / 10
    sum += p
  end

  return super_digit(sum)
end
  

# Time Complexity - O(n)
# Space Complexity - O(n)
def refined_super_digit(n, k)

  sum = 0
  until n == 0
    p = n % 10
    n = n / 10
    sum += p
  end

  return super_digit(sum * k)
end


# alternative way...?
# def refined_super_digit(n, k)
#  concatenate = n.to_s * k
#
#   return super_digit(concatenate.to_i)
# end