# Superdigit

# Time Complexity - Olog(n)
# Space Complexity - Olog(n)

def super_digit(n)
    if n == 1 || n == 0
        return n
    end
    
    return 1 + ((n - 1) % 9)
    # return (n % 10 + super_digit(n / 10));
end
  
puts super_digit(123)

# Time Complexity - ?
# Space Complexity - ?
# def refined_super_digit(n, k)
    
# end
    