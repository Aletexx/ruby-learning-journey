#--------------------------------------------------------------------------
#
# Script Name: Submission2Q11535590.rb
# Version:     1.0
# Author:      Alessandro Bastos
# Date:        September 2024
#
# Description: Ruby program that enables users to search for specific SSNs in
#              .docx documents within a specified directory and its sub-dir.
#              The program then generate a new .docx file named result.docx that
#              compiles the found dates along with their corresponding doc names.
#
#--------------------------------------------------------------------------

require 'docx'

class SubmissionTwo

  # method for going through directories and output num of docs,SSNs
  def scan_dir(directory)
    pattern = /\b\w{3}-\w{2}-\w{4}\b/ # Pattern for SSN format

    $results_1535590 = {}

    # Search .docx files in a directory and its subfolders
    Dir.glob("#{directory}/**/*.docx") do |file|
      doc = Docx::Document.open(file)

      # Get the document's text content
      text = doc.paragraphs.map(&:text).join("\n")

      # Check for matches with the regular expression and store it in ssn_match
      ssn_match = text.scan(pattern)

      # Add to results to global variable hash if any matches are found
      $results_1535590[file] = ssn_match unless ssn_match.empty?
    end

    # variables to output data related to doc and SSNs
    num_of_docs = 0
    total_num_of_ssn = 0

    if $results_1535590.empty?
      puts "No matches found for '#{pattern}' in '#{directory}'."
    else
      # Output num of docs and num of SSNs
      $results_1535590.each do |file_path, ssn_match|
        num_of_docs += 1
        ssn_num_in_each_doc = ssn_match.length
        total_num_of_ssn += ssn_num_in_each_doc
        puts "SSN found in doc: #{file_path}"
        puts "SSNs occurrences: #{ssn_num_in_each_doc}.\n\n"
      end
      puts "\nTotal num of SSNs in all docs: #{total_num_of_ssn}."
      puts "Num od documents(.docx) with SSNs: #{num_of_docs}."
    end
  end

  # method for creating new .txt with a list of all SSNs found, or otherwise message with no found SSNs
  def create_txt
    file_results = $results_1535590

    # Variable to store results in the current directory
    new_file = "#{Dir.pwd}/result.txt"

    if file_results.empty?
      File.open(new_file, 'w') do |doc|
        doc.write('There is no SSNs found in all word documents in the given directory.')
      end
    # Create a result.txt with list of all SSNs found and doc name
    else
      test = File.new(new_file, 'w')
      test.close
      num_counter = 1
      # Loop through docs to get them and SSNs
      file_results.each do |doc_path, match_ssn|
        # Remove full path and just leave doc name
        doc_name = File.basename(doc_path, '.docx')
        # Loop and add list of SSNs to result.txt
        match_ssn.each do |match|
          write_ssn = File.new(new_file, 'a')
          write_ssn.puts "#{num_counter}- #{match}  #{doc_name}.docx\n"
          write_ssn.close
          num_counter += 1
        end

      end
    end

  end
end

# ------------------main script logic---------------------------------

# Object of Class SubmissionTwo
ssn_checker = SubmissionTwo.new

puts "Please enter directory: "
puts '(example: C:/FolderName)'
user_input = STDIN.gets
user_input.chop!

ssn_checker.scan_dir(user_input)
ssn_checker.create_txt

# C:/testRuby
