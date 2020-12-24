def fibonacci_recursive(n)
  return fib_helper([0,1], 2, n)
end

def fib_helper(solutions, current, n)
  if n == 0 || n == 1
    return n
  end

  if current == n
    return solutions[n-1] + solutions[n-2]
  end

  solutions << solutions[current - 1] + solutions[current - 2]
  return fib_helper(solutions, current + 1, n)
end


p "Answer: #{fibonacci_recursive(4)}"