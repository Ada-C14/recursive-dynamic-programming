# Superdigit

# Time Complexity - ?
# Space Complexity - ?
def super_digit(n)
  return n if n >= 0 && n <= 9

  single_digits_array = n.digits

  single_digit_sum = single_digits_array.sum

  return super_digit(single_digit_sum)
end
  

# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)

  single_digits_array = n.digits

  # single_digits_array = (n.digits) * k

  # pp single_digits_array

  single_digit_sum = single_digits_array.sum

  # pp single_digit_sum
  new_n = single_digit_sum * k

  return super_digit(new_n)

  # current = super_digit(single_digit_sum)

  # super_digit_n = super_digit(single_digit_sum)
  #
  # return super_digit(super_digit_n * k)

end

# p super_digit(super_digit(148) * 3)
p super_digit(148)

p refined_super_digit(148, 3) # 3
# p super_digit(9875)

# p 10.digits.to_i
# p 100 % 10

# super_digit(1) + super_digit(1) -> super_digit(2) --> 2