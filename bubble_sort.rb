
def bubble_sort(array)
  sorted_arr = array

  # Arrays with one or zero elements are already sorted
  if array.length < 2
    return sorted_arr
  end

  n = 0

  # Loop through the array n - 1 times
  while n < array.length - 1
    for i in 0..array.length - 2  # length - 2 to avoid nil value comparison
      # Swap the neighboring elements
      if array[i] > array[i+1]
        temp = array[i+1]
        array[i+1] = array[i]
        array[i] = temp
      end
    end

    n += 1
  end

  return sorted_arr
end
