# Superdigit

# Time Complexity - ?
# Space Complexity - ?
def super_digit(n)
   if n >= 0 && n < 10 
    return n
   end
   digits_of_n = n.digits
   sum_digits = digits_of_n.sum

   return super_digit(sum_digits)
end
  

# super_digit(2345) -> super_digit(14)

# # Time Complexity - ?
# # Space Complexity - ?
# def refined_super_digit(n, k)
    
# end
    
