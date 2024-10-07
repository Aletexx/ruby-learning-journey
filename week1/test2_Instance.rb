class Book

  def initialize (title, author, pages)
    @title = title
    @author = author
    @pages = pages
  end

  def book_info
    puts "Info of the following book:" +
           "\nTitle: #{@title} \nAuthor: #{@author}" +
           "\nPages: #{@pages}"
  end
end

instance = Book.new("Romeo and Juliet", "Shakespeare", 123)

instance.book_info