def bubble_sort(array)
  counter = 0
  (0..array.length - 1).each do
    array[0...-1].each.with_index do |_, i|
      left = array[i]
      right = array[i + 1]
      if left > right
        array[i] = right
        array[i + 1] = left
        counter += 1
      end
    end
    counter.zero? || array
  end
  array
end

# example
p bubble_sort([4, 3, 78, 2, 0, 2])
