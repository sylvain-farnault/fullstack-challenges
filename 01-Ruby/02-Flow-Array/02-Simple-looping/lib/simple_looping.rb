def sum_with_for(min, max)
  # CONSTRAINT: you should use a for..end structure
  sum = min > max ? -1 : 0
  for num in (min..max)
    sum += num
  end if sum == 0
  sum
end

def sum_with_while(min, max)
  # CONSTRAINT: you should use a while..end structure
  sum = min > max ? -1 : 0
  array = (min..max).to_a if sum == 0
  index = 0
  while array[index]
    sum += array[index]
    index += 1
  end if sum == 0
  sum
end
