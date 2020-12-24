def merge(left, right)
  result = []
  r_index = 0
  l_index = 0

  while l_index < left.length || r_index < right.length
    p "left index: #{l_index}, value at that index : #{left[l_index] ? left[l_index] : 'none, index greater than array length'}"
    p "right index: #{r_index}, value at that index : #{right[r_index] ? right[r_index] : 'none, index greater than array length'}"

    if r_index >= right.length || (l_index < left.length and left[l_index] < right[r_index])
      result << left[l_index]
      l_index += 1
    else
      result << right[r_index]
      r_index += 1
    end

    p "result after one loop: #{result}"
  end

  return result
end


def merge_sort(arr)
  return arr if arr.length <= 1

  mid = arr.length / 2 - 1
  left = merge_sort(arr[0..mid])
  right = merge_sort(arr[mid+1..-1])

  p "Midpoint in the array : #{mid}"
  p "Left array : #{left}"
  p "Right array : #{right}"

  return merge(left, right)
end

arr1 = [2,4,3,7,5,8]
merge_sort(arr1)


#result of running merge_sort method:
# "Midpoint in the array : 0"
# "Left array : [4]"
# "Right array : [3]"
# "left index: 0, value at that index : 4"
# "right index: 0, value at that index : 3"
# "result after one loop: [3]"
# "left index: 0, value at that index : 4"
# "right index: 1, value at that index : none, index greater than array length"
# "result after one loop: [3, 4]"
# "Midpoint in the array : 0"
# "Left array : [2]"
# "Right array : [3, 4]"
# "left index: 0, value at that index : 2"
# "right index: 0, value at that index : 3"
# "result after one loop: [2]"
# "left index: 1, value at that index : none, index greater than array length"
# "right index: 0, value at that index : 3"
# "result after one loop: [2, 3]"
# "left index: 1, value at that index : none, index greater than array length"
# "right index: 1, value at that index : 4"
# "result after one loop: [2, 3, 4]"
# "Midpoint in the array : 0"
# "Left array : [5]"
# "Right array : [8]"
# "left index: 0, value at that index : 5"
# "right index: 0, value at that index : 8"
# "result after one loop: [5]"
# "left index: 1, value at that index : none, index greater than array length"
# "right index: 0, value at that index : 8"
# "result after one loop: [5, 8]"
# "Midpoint in the array : 0"
# "Left array : [7]"
# "Right array : [5, 8]"
# "left index: 0, value at that index : 7"
# "right index: 0, value at that index : 5"
# "result after one loop: [5]"
# "left index: 0, value at that index : 7"
# "right index: 1, value at that index : 8"
# "result after one loop: [5, 7]"
# "left index: 1, value at that index : none, index greater than array length"
# "right index: 1, value at that index : 8"
# "result after one loop: [5, 7, 8]"
# "Midpoint in the array : 2"
# "Left array : [2, 3, 4]"
# "Right array : [5, 7, 8]"
# "left index: 0, value at that index : 2"
# "right index: 0, value at that index : 5"
# "result after one loop: [2]"
# "left index: 1, value at that index : 3"
# "right index: 0, value at that index : 5"
# "result after one loop: [2, 3]"
# "left index: 2, value at that index : 4"
# "right index: 0, value at that index : 5"
# "result after one loop: [2, 3, 4]"
# "left index: 3, value at that index : none, index greater than array length"
# "right index: 0, value at that index : 5"
# "result after one loop: [2, 3, 4, 5]"
# "left index: 3, value at that index : none, index greater than array length"
# "right index: 1, value at that index : 7"
# "result after one loop: [2, 3, 4, 5, 7]"
# "left index: 3, value at that index : none, index greater than array length"
# "right index: 2, value at that index : 8"
# "result after one loop: [2, 3, 4, 5, 7, 8]"