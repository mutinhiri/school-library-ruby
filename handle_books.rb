require 'json'
class HandleBooks
  attr_reader :books

  def initialize
    @books = []
  end

  def read_books_json
    file = 'books.json'
    if File.exist? file
      JSON.parse(File.read(file)).map do |b|
        add_book(b['title'], b['author'])
      end
    else
      []
    end
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
      puts 'There is no book registered in the library'
    else
      @books.each_with_index { |book, index| puts "#{index}) #{book}" }
    end
  end

  def get_book_from_index(index)
    @books[index]
  end
end
