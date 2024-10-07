# fruit = %w(Apples Oranges Bananas Oranges Grapes)
# fruit.delete_at(3)
# puts fruit.inspect

# arrays practice Slide 21 week 4
array = %w( USA UK AUS JPA)  # assign an Array
array.push("NZ") # adding "NZ" element to the end of array
array.sort! # sorting in Alphabetical worder
 array.delete_at(4) # deleting element at index 4

array.each_with_index do |element, i| # using ternary operator to format view to (AUS)
  result = i == array.length - 1 ? "(" + element + ")" : "(" + element + ") -" # Last element remove last character -
  print result
end

puts "\n"
