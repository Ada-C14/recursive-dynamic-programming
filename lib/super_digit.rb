# Superdigit

# Time Complexity - ?
# Space Complexity - ?
def super_digit(n)
  if n < 10
    return n
  else
    sum = 0

    n.to_s.size.times do
      sum += (n % 10)
      super_digit(n / 10)
    end
    # sum += (n/10) % 10
    # sum += (n/100) % 10

    if sum >= 10
      return super_digit(sum)
    else
      return sum
    end
  end
end


# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)
  digit = k * super_digit(n)

  if digit >= 10
    return super_digit(digit)
  else
    return digit
  end
end
    