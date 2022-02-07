# Define HandleBooks class
class HandleBooks
  def initialize
    @books = []
  end

  def add_book(title, author)
    @books.push(Book.new(title, author))
  end

  def list_books
    if @books.empty?
      puts 'There is no book registered in the library'
    else
      @books.each { |book| puts book }
    end
  end
end
