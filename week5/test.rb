# print "Input: "
# answer = STDIN.gets
# answer.chop!

# if " I am Jerry. My father is Mrs. Ford." =~ /Mrs?/ then
#   print "r"
# end
#
# if "ragf" =~ /f*r/ then
#   print "match"
# end

if "ragf" =~ /[aeiou]/ then
  print "match"
end

x = "Once upon a time there was a small boy who climbed
a small tree."
puts x.sub("small", "big")

if RUBY_PLATFORM =~ /win32/
  puts "We're in Windows!"
elsif RUBY_PLATFORM =~ /linux/
  puts "We're in Linux!"
elsif RUBY_PLATFORM =~ /darwin/
  puts "We're in Mac OS X!"
elsif RUBY_PLATFORM =~ /freebsd/
  puts "We're in FreeBSD!"
else puts "We're running under an unknown operating
system."
end