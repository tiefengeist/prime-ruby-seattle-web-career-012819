def prime?(int)
  if int < 2
    return false
  end
  if int == 2
    return true
  end
  if int%2 == 0
    return false
  end
  #the above covers 1 and 2,
  #and numbers divisible by two
  arr = []
  var = 3
  while var < int
    arr << var
    var += 2
  end
  #this creates an array of just odd numbers
  arr.each do |elt|
    if int%elt == 0
      return false
    end
  end
  #this checks if int is divisible by
  #anything in the array (odd numbers)
  return true
end
