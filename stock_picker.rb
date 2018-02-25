#> stock_picker([17,3,6,9,15,8,6,1,10])
#=> [1,4]  # for a profit of $15 - $3 == $12
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
      else
        best_value = best_value #keep the best_value if the original is higher
      end
      i += 1 #increment to check the rest of the values inside the array
    end }

  puts two_days.inspect
end
