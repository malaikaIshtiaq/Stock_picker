def stockPicker(arr)
    buyDaySellDay = [0,0]
    highNum = arr[1] - arr[0]
    arr.each.with_index{|num, idx|
      for i in idx..(arr.size-1) do
        if (arr[i] - num > highNum ? highNum = arr[i] - num : false)
          buyDaySellDay[0] = idx
          buyDaySellDay[1] = i
        end
      end
    }
  puts "Buy on day #{buyDaySellDay[0]}, sell on day #{buyDaySellDay[1]}, for a total of #{highNum} profit."
  return buyDaySellDay
  end
  stockPicker([17,3,6,9,15,8,6,1,10])
  