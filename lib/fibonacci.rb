# Improved Fibonacci

# Time Complexity - O(n)
# Space Complexity - O(n)  (should be O(n))
# Hint, you may want a recursive helper method
# Hint:  Fib(0) = 0, Fib(1) = 1, work up from there


def fibonacci(n, i = 2, seq = [0, 1])
  raise ArgumentError if n < 0
  return seq[n] if i > n
  return fibonacci(n, i+1, seq + [seq[i-1] + seq[i-2]])
end




# loop version
# def fibonacci(n)
#   raise ArgumentError if n < 0
#   seq = []
#   seq[0], seq[1] = 0, 1
#
#   2.upto(n) do |i|
#     seq[i] = seq[i-1] + seq[i-2]
#   end
#
#   return seq[n]
# end


