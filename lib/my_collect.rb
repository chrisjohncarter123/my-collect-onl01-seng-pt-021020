def my_collect(array)
  i = 0
  result = []
  while i < array.length
    
    result << ( yield(array[i]) )
    puts ( yield(array[i]) )
    i += 1
  end
  array = result
  array
end


array = ["Tim Jones", "Tom Smith", "Jim Campagno"]
my_collect(array) do |name|
  name.split(" ").first
end



#["Tim", "Tom", "Jim"]