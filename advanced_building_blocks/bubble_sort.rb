def bubble_sort array
  sorted_array = []
  while (array.length != 0)
    array.each_index do |index|
      if (index != array.length-1 && array[index] > array[index+1])
        array[index], array[index+1] = array[index+1], array[index]
      end
    end
    sorted_array.insert(0, array.pop)
  end
  puts sorted_array
end

bubble_sort([1])

