# Superdigit

# Time Complexity - ?
# Space Complexity - ?
def super_digit(n)

  #i feel like i'm cheating here. I know that .digits creates a new array...wondering how
  # this will affect the time/space complexities..o(n^2)?
  n < 10 ?  n : super_digit(n.digits.sum)

end

  

# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)
    
end
    