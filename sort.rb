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
    if c.zero?
      puts "\n !!! No sort condition #{array}\n\n"
      return array
    end
  end
  array
end
