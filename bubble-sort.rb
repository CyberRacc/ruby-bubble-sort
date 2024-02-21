#typed: false

def bubble_sort(array_to_sort)
  array_length = array_to_sort.length
  swapped = false
  for i in 0..array_length-2
    for j in 0..array_length-2
      if array_to_sort[j] > array_to_sort[j+1]
        array_to_sort[j], array_to_sort[j+1] = array_to_sort[j+1], array_to_sort[j]
        swapped = true
      end
    end
    break if swapped == false
    end

end

puts bubble_sort([4,3,78,2,0,2]) # => [0,2,2,3,4,78]
