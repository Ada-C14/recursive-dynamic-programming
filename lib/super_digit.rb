require 'benchmark'

# Superdigit

# Time Complexity - O(n), it depends on how many digits of a number, so it's O(n). 
# Space Complexity - O(1), only use two extra variables, ie sum and result, to do the calculation. So the Space complexity is a constant.
def super_digit(n)
  sum = 0
  result = super_helper(n, sum)
  while result > 9
    result = super_helper(result, sum)
  end
  return result
end

def super_helper(n, sum)
  return sum += n if n < 10
  sum += n%10
  return super_helper(n/10, sum)
end

# Time Complexity - O(n), same as superdigit, it depends on how many digits of a number, so the time complexity is O(n). 
# Space Complexity - O(1), same as superdigit, only use two extra variables, so the space complexity is O(1).
def refined_super_digit(n, k)
  return super_digit(super_digit(n) * k)
end

# Bad code without doing dynamic programming
def refined_super_digit_test(n, k)
  return super_digit((n.to_s * k).to_i)
end


super_digit = 9875123

Benchmark.bm(20) do |bm|
  bm.report('Super digit') do
    super_digit(super_digit)
  end

  bm.report('refined Super digit') do
    refined_super_digit(super_digit, 3)
  end

  bm.report('refined Super digit_test') do
    refined_super_digit_test(super_digit, 3)
  end
end
    