def fibonacci(n)
  p "n before loop : #{n}"
  if n == 0 || n == 1
    return n
  end

  solutions = [0,1]
  current = 2

  p "Solutions before loop : #{solutions}"
  p "Current before loop : #{current}"

  while current < n
    solutions << solutions[current - 1] + solutions[current - 2]
    current += 1

    p "Solutions after one loop : #{solutions}"
    p "Current after one loop : #{current}"
  end
  p "Solutions after all loops : #{solutions}"
  p "Current after all loops : #{current}"

  p "solutions[current - 1] index value : #{[current - 1]}, value at that index : #{solutions[current - 1]}"
  p "solutions[current - 2] index value : #{[current - 2]}, value at that index : #{solutions[current - 2]}"
  p "Final value returned : #{solutions[current - 1] + solutions[current - 2]}"
  return solutions[current - 1] + solutions[current - 2]
end


fibonacci(4)


#"n before loop : 4"
# "Solutions before loop : [0, 1]"
# "Current before loop : 2"
# "Solutions after one loop : [0, 1, 1]"
# "Current after one loop : 3"
# "Solutions after one loop : [0, 1, 1, 2]"
# "Current after one loop : 4"
# "Solutions after all loops : [0, 1, 1, 2]"
# "Current after all loops : 4"
# "solutions[current - 1] index value : [3], value at that index : 2"
# "solutions[current - 2] index value : [2], value at that index : 1"
# "Final value returned : 3"