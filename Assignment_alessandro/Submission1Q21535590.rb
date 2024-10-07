# Question 2 - Alessandro Bastos

puts "Please type below the path and name of a folder "
puts '(example: C:\Users\Workspace\BIT246\FolderName)'
print "\nType here:  "
user_input = STDIN.gets #get user input
user_input.chop!

folder15355590 = user_input # variable to analyze user input

if File.exist?(folder15355590) then
  puts "Your folder exists"
  print "Please press enter to view content: "
  enter = STDIN.gets # prompt user to press enter
  puts Dir.entries(folder15355590) # display folder content

else
  puts 'Sorry, Alessandro - error1535590 folder doesnt exist'
end
