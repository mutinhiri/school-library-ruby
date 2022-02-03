require './student'
require './teacher'
require './classroom'
require './book'
require './rental'

class App
  def initialize
    @peope = []
    @books = []
    @rentals = []
    @options = {
      '1' => 'List all books',
      '2' => 'List all people',
      '3' => 'Create a person Teacher/ Student',
      '4' => 'Create a book',
      '5' => 'Create a rental',
      '6' => 'List all rentals for a given person'
      '7' => 'Exit'
    }
  end

  def run
    puts 'Welcome to Bunbee School Library'

    loop do
      puts ''
      puts 'Select option by number'
      @options.each { |key, value| puts "#{key} #{value}"}
      option = gets.chomp
      break if option == '7'

      menu_select option
    end
  end

  def menu_select(option)
    case option
    when '1'
      list_books
    when '2'
      list_people
    when '3'
      create_person
    when '4'
      create_book
    when '5'
      create_rental
    when '6'
      list_rentals
    else
      puts 'Input a valid option'
    end
  end

  private

  def list_books
    if @books.empty?
      puts 'There is no book available in the library'
    else
      @books.each{ |book| puts book }
    end
  end

end
