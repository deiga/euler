limit = 1000
(1..limit).inject(0) do |result, element|
  element_5 = 5*element
  element_3 = 3*element
  element_15 = 5*3*element
  if element_5 < limit
    result += element_5
  end
  if element_3 < limit
    result += element_3
  end
  if element_15 < limit
    result -= element_15
  end
  if element_5 >= limit and element_3 >= limit
    p result
    break
  end
  result
end
