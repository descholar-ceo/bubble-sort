def sort(array)
  c = 0
  (0..array.length - 1).each do
    array[0...-1].each.with_index do |_, i|
      left = array[i]
      right = array[i + 1]
      if left > right
        array[i] = right
        array[i + 1] = left
        c += 1
      end
    end
    c.zero? || array
  end
  array
end

puts sort([4, 3, 78, 2, 0, 2])
