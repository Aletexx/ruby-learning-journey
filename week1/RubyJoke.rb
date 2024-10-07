#--------------------------------------------------------------------------
# 
# Script Name: RubyJoke.rb
# Version: 1.0
# Author: Jerry Lee Ford, Jr.
# Date: March 2010
# 
# Description: This Ruby script tells a series of 5 humorous jokes
#
# Website: https://funnyjokes.com
# Last updated: 02/08/2024
#--------------------------------------------------------------------------


# Define custom classes ---------------------------------------------------

#Define a class representing the console window
class Screen
  def cls  #Define a method that clears the display area
    puts ("\n" * 25)  #Scroll the screen 25 times
  end
end


# Main Script Logic -------------------------------------------------------

Console_Screen = Screen.new  #Initialize a new Screen object

#Execute the Screen object's cls method in order to clear the screen
 Console_Screen.cls

#Prompt the player for permission to begin the game
puts "Would you like to hear a few funny jokes? (y/n)"

#Collect the player's response
answer = STDIN.gets

#Remove any extra characters appended to the string
answer.chop!

#Analyze the player's response
if answer == "n"  #See if the player elected not to play

  Console_Screen.cls  #Clear the display area

  #Invite the player to return and play again
  puts "Sorry to hear that. Please return and play again soon."

else

  #  Console_Screen.cls  #Clear the display area

  #Display the beginning of the first joke
  puts "What do you call fake spaghetti? (Press Enter)"

  pause = STDIN.gets  #Force the player to press Enter to continue

  #Display the punch line
  puts "An Impasta! (Press Enter)"

  pause = STDIN.gets  #Force the player to press Enter to continue

  #  Console_Screen.cls  #Clear the display area
 
  #Display the beginning of the second joke
  puts "Why don’t scientists trust atoms? (Press Enter)"

  pause = STDIN.gets  #Force the player to press Enter to continue

  #Display the punch line
  puts "Because they make up everything! (Press Enter)"

  pause = STDIN.gets  #Force the player to press Enter to continue

  #  Console_Screen.cls  #Clear the display area
  
  #Display the beginning of the third joke
  puts "Why was the math book sad? (Press Enter)"

  pause = STDIN.gets  #Force the player to press Enter to continue

  #Display the punch line
  puts "Because it had too many problems. (Press Enter)"

  pause = STDIN.gets  #Force the player to press Enter to continue

  #  Console_Screen.cls  #Clear the display area
  
  #Display the beginning of the fourth joke
  puts "What is black and white and red all over? (Press Enter)"

  pause = STDIN.gets  #Force the player to press Enter to continue

  #Display the punch line
  puts "A zebra with a scratched knee! (Press Enter)"


  pause = STDIN.gets  #Force the player to press Enter to continue


  #  Console_Screen.cls  #Clear the display area
  
  #Display the beginning of the fifth joke
  puts "What do you call cheese that isn't yours? (Press Enter)"

  pause = STDIN.gets  #Force the player to press Enter to continue

  #Display the punch line
  puts "Nacho cheese! (Press Enter)"

  pause = STDIN.gets  #Force the player to press Enter to continue

  Console_Screen.cls  #Clear the display area

  #Display the beginning of the fifth joke
  puts "Why can't you give Elsa a balloon? (Press Enter)"

  pause = STDIN.gets  #Force the player to press Enter to continue

  #Display the punch line
  puts "Because she will let it go! (Press Enter)"

  pause = STDIN.gets  #Force the player to press Enter to continue

  Console_Screen.cls  #Clear the display area

  #Display the beginning of the fifth joke
  puts "Why did the bicycle fall over? (Press Enter)"

  pause = STDIN.gets  #Force the player to press Enter to continue

  #Display the punch line
  puts "Because it was two-tired! (Press Enter)"

  pause = STDIN.gets  #Force the player to press Enter to continue

  Console_Screen.cls  #Clear the display area

  #Display the beginning of the fifth joke
  puts "What do you get when you cross a snowman and a vampire? (Press Enter)"

  pause = STDIN.gets  #Force the player to press Enter to continue

  #Display the punch line
  puts "Frostbite! (Press Enter)"

  pause = STDIN.gets  #Force the player to press Enter to continue

  Console_Screen.cls  #Clear the display area

  #Display the beginning of the fifth joke
  puts "Why did the golfer bring two pairs of pants?(Press Enter)"

  pause = STDIN.gets  #Force the player to press Enter to continue

  #Display the punch line
  puts "In case he got a hole in one! (Press Enter)"

  pause = STDIN.gets  #Force the player to press Enter to continue

  Console_Screen.cls  #Clear the display area

  puts "Thanks for playing the Ruby Joke game!"
  author_info = "Copyright 2024
                    \nwebsite: https://www.melbournepolytechnic.edu.au/students/"
  puts author_info


end


