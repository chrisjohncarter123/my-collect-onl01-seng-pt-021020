def my_collect(array)
  i = 0
  
  while i < array.length
    array << yield(array[i])
    i += 1
  end
  
end


array = ["Tim Jones", "Tom Smith", "Jim Campagno"]
my_collect(array) do |name|
  name.split(" ").first
end

puts array

#["Tim", "Tom", "Jim"]