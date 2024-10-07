# begin
#   puts z
# rescue => e
#
#   puts "sorry an eror has occured"
#   puts "error class: " + e.class.to_s
#   puts "error message : " + e.to_s
#
# end

print "\nEnter a numerator: "
numerator = STDIN.gets #Collect the numerator
numerator.chop! #Remove the end of line marker
print "\nEnter a denominator: "
denominator = STDIN.gets #Collect the numerator
denominator.chop! #Remove the end of line marker
numerator = numerator.to_i
denominator = denominator.to_i
begin
  calculation = numerator / denominator
  print "\nResult = " + calculation.to_s
  puts "\n"
rescue
  denominator = 10
  retry
end