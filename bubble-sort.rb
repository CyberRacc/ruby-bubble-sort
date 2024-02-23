#typed: false

def bubble_sort(array_to_sort)
  n = array_to_sort.length

  loop do

    sorted = false # Upon each loop, set sorted to false

    (n - 1).times do |i|
      if array_to_sort[i] > array_to_sort[i + 1]
        # Swap the indexes with the below line
        array_to_sort[i], array_to_sort[i + 1] = array_to_sort[i + 1], array_to_sort[i]
        sorted = true # Set sorted to true, indicating a swap has been made
      end
    end
    # Here we break the loop if sorted is false.
    break if not sorted # Syntactic sugar for `break if sorted == false`
  end
  return array_to_sort # Return the array
end

puts bubble_sort([4,3,78,2,0,2]).inspect # => [0,2,2,3,4,78]
