Ruby program that enables users to search for specific SSNs in .docx documents within a specified directory and its sub-directories.
The program then generate a new .docx file named result.docx that compiles the found dates along with their corresponding document names.

1. Program's logic implemented using classes, objects, methods, and constructors.
2. The program don't has an elaborate user interface. User input can be entered through the command prompt.
3. Request a user input - a directory from the user through command prompt.
4. Search social security numbers (SSNs) in all docx documents (.docx) in the specified directory and sub-directories (user input directory).
5. Please note that all SSNs follows the pattern xxx-xx-xxxx where x is alphanumeric characters such as 1d5-08-2A23.
6. Output the following information:
   a.the list of documents (names) containing SSNs.
   b.total number of documents containing SSNs.
   c.total number of occurrences of the SSNs in each document.
7. Generate a .docx (or .txt) file named result.docx (or result.txt) in the same directory with your rb file.
8. If SSNs are discovered, write all SSNs along with the corresponding file names.
   Specifically, each SSN and its corresponding file name should take up a new line; each line should have a line number;
   the entries should be sorted chronologically based on the SSNs. For example:
    '1. 1d5-08-2A23 log1.docx'
    '2. 5e0-34-6tdT log2.docx'