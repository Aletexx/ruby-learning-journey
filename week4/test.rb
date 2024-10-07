# Ruby
#rrr
#

class Test

  def show_medals
    puts "Watch me count!"
    3.times {|x| puts x}
  end
end

# Script

puts "Welcome"
puts "Press enter to continue"

gets.chomp

init = Test.new
init.show_medals