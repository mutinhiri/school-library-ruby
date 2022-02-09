require 'json'
# Define HandleBooks class
class HandleBooks
  attr_accessor :books

  def initialize
    file = 'books.json'
    @books = []
    if File.exist? file
      JSON.parse(File.read(file)).map do |b|
        @books.push(b['title'], b['author'])
      end
    else
      @books = []
    end
  end

  def read_books_json
    puts 'ok'
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

  def list_books_with_index
    if @books.empty?
      puts 'No book registered in the library'
    else
      @books.each_with_index { |book, index| puts "#{index}) #{book}" }
    end
  end

  def get_book_from_index(index)
    @books[index]
  end
end
