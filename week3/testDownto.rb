
#downto bigger to lower
3.downto(-1) do |x|
  print x, ") Hello!\n"
end
puts "That's all folks!"

puts "\n"
#upto lower to big
1.upto(5) do |x|
  print x, ") Hello!\n"
end

puts "\n"

# step
1.step(10,2) do |x|
  print x, ". Counting by 2\n"
end
puts "\n"
# vd
for i in 1..5
  puts i
  retry if i ==3
end