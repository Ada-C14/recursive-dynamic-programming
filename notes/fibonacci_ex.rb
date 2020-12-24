def fibonacci(n)
  p "n before loop : #{n}"
  if n == 0 || n == 1
    return n
  end

  first = 0
  second = 1
  current = 1

  p "First before loop : #{first}"
  p "Second before loop : #{second}"
  p "Current before loop : #{current}"

  while n > 2
    first = second
    second = current
    current = first + second
    n -= 1
    p "n after one loop : #{n}"
    p "First after one loop : #{first}"
    p "Second after one loop : #{second}"
    p "Current after one loop : #{current}"
  end

  p "Final value returned : #{current}"
  return current
end


fibonacci(4)

#""n before loop : 4"
# "First before loop : 0"
# "Second before loop : 1"
# "Current before loop : 1"
# "n after one loop : 3"
# "First after one loop : 1"
# "Second after one loop : 1"
# "Current after one loop : 2"
# "n after one loop : 2"
# "First after one loop : 1"
# "Second after one loop : 2"
# "Current after one loop : 3"
# "Final value returned : 3"