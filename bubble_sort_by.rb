def bubble_sort_by(array)
  counter = 0
  (0..array.length - 1).each do
    array[0...-1].each.with_index do |_, i|
      left = array[i]
      right = array[i + 1]
      if yield(left, right).positive?
        array[i] = right
        array[i + 1] = left
        counter += 1
      end
    end
    counter.zero? || array
  end
  array
end

res = bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end

p res
