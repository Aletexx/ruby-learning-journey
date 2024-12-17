class StaticPagesController < ApplicationController
  def home
  end
  def search
    path = params[:directory]
    searcher = SubmissionTwo.new(path)  # Pass the directory path when initializing
    @results = searcher.scan_dir      # Call scan_dir without parameters since it's stored in the instance variable
  end
  def upload
    uploaded_file = params[:file]
    directory = params[:directory]

    if uploaded_file && directory.present?

        # Normalizing the directory path
        directory = File.expand_path(directory)

        # Checking if directory exists
        FileUtils.mkdir_p(directory) unless File.directory?(directory)

        # Getting original filename
        file_name = uploaded_file.original_filename
        file_path = File.join(directory, file_name)

        # Saving uploaded file content to the directory
        File.open(file_path, 'wb') do |file|
          file.write(uploaded_file.read)
        end
      redirect_to root_path
    end

  end

end

