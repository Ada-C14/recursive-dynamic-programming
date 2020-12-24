def fibonacci_call(n, call_count)
  p "Call : #{call_count}, Value of n : #{n}"
  if n == 0 || n == 1
    return n
  end
  p "Call : #{call_count}, n - 1 = #{n - 1}"
  p "Call : #{call_count}, n - 2 = #{n - 2}"
  return fibonacci_call(n-1, call_count + 1) + fibonacci_call(n-2, call_count + 1)
end


p "fibonacci_call Answer: #{fibonacci_call(4, 1)}"

# "Call : 1, Value of n : 4"
# "Call : 1, n - 1 = 3"
# "Call : 1, n - 2 = 2"
# "Call : 2, Value of n : 3"
# "Call : 2, n - 1 = 2"
# "Call : 2, n - 2 = 1"
# "Call : 3, Value of n : 2"
# "Call : 3, n - 1 = 1"
# "Call : 3, n - 2 = 0"
# "Call : 4, Value of n : 1"
# "Call : 4, Value of n : 0"
# "Call : 3, Value of n : 1"
# "Call : 2, Value of n : 2"
# "Call : 2, n - 1 = 1"
# "Call : 2, n - 2 = 0"
# "Call : 3, Value of n : 1"
# "Call : 3, Value of n : 0"
# "fibonacci_call Answer: 3"



def fibonacci(n)
  p "Value of n : #{n}"
  if n == 0 || n == 1
    return n
  end
  p "n - 1 = #{n - 1}"
  p "n - 2 = #{n - 2}"
  return fibonacci(n-1) + fibonacci(n-2)
end


p "Answer: #{fibonacci(4)}"

# "Value of n : 4"
# "n - 1 = 3"
# "n - 2 = 2"
# "Value of n : 3"
# "n - 1 = 2"
# "n - 2 = 1"
# "Value of n : 2"
# "n - 1 = 1"
# "n - 2 = 0"
# "Value of n : 1"
# "Value of n : 0"
# "Value of n : 1"
# "Value of n : 2"
# "n - 1 = 1"
# "n - 2 = 0"
# "Value of n : 1"
# "Value of n : 0"
# "Answer: 3"