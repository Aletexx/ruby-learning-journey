require 'docx'
class SubmissionTwo

  def initialize(path)
    @directory = path
    @pattern = /\b\w{3}-\w{2}-\w{4}\b/ # Pattern for SSN format
    @results = {}
  end

  # method for going through directories and output num of docs,SSNs
  def scan_dir
    # Search .docx files in a directory and its subfolders
    Dir.glob("#{@directory}/**/*.docx") do |file|
      doc = Docx::Document.open(file)
      text = doc.paragraphs.map(&:text).join("\n")
      ssn_match = text.scan(@pattern)
      @results[file] = text unless ssn_match.empty?
      unless ssn_match.empty?
        Fileapp.create(file_path: file, content: text)
      end
    end
    @results
    end

end
