# Question 1 - Alessandro Bastos

 file_path = "Assignment_alessandro/Story1535590.txt" # variable to store file

 if File.exist?(file_path) then #check if file exists
   word = "Ruby" #Variable to store a specific word/phrase

   if File.readlines(file_path).grep(/#{word}/).any? then # Check if "Ruby" is in the file
     #display file content and Num of times the word occurs
     puts File.readlines(file_path)
     puts "\n#{word} occurrence: #{File.readlines(file_path).grep(/#{word}/).count times} in this file"
   else
     puts "#{word} not found" #display it if word is not found in file
   end

 else
   puts "This file: #{file_path} doesnt exist" #display it if file doesnt exist
 end

