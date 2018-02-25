def stock_picker (array)
  best_value = 0
  two_days = [0, 0]

  array.each_with_index.map { | stock, index |
    i = index #initializing this index to keep track of the rest of the stock
    while (i + 1 < array.length)
      if (array[i + 1] - stock > best_value) #compare the difference with best_value
        best_value = array[i + 1] - stock #if difference is higher than best_value, change best_value
        two_days[0] = index #store the two days
        two_days[1] = i + 1
      end
      i += 1 #increment to check the rest of the values inside the array
    end }

  print two_days.inspect
end
