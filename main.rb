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

  def list_people
    if @people.empty?
      puts 'There is no one registered in the library'
    else
      @people.each { |person| puts person}
    end
  end

  def create_person
    print 'Press (1) to create a student or press (2) to create teacher? [input the number]:'
    option = gets.chomp
    case option
    when '1'
      create_student
    when '2'
      create_teacher
    else
      puts 'Not a valid option'
      return
    end
    puts 'Person created successfully'
  end

  def create_student
    print 'Age:'
    age = gets.chomp
    print 'Name:'
    name = gets.chomp
    print 'Has parent permission? [Y/N]:'
    allowed = gets.chomp
    @people.push(Student.new(name: name, age: age, parent_permission: translate_answer(allowed.downcase)))
  end

  def create_teacher
    print 'Age'
    age = gets.chomp
    print 'Name'
    name = gets.chomp
    print 'Specialization'
    specialization = gets.chomp
    @people.push(Teacher.new(name: name, age: age, specialization: specialization))
  end

  def translate_answer(ans)
    %[yes y].include?(ans)
  end

  def create_book
    print 'Title'
    title = gets.chomp
    print 'Author'
    author = gets.chomp
    @books.push(Book.new(title, author))
    puts 'Book created successfully'
  end

  def create_rental
    puts 'Select a book from the following list by number'
    @books.each_with_index { |book, index| puts "#{index} #{book}" }
    book_i = gets.chomp
    puts ''
    puts 'Select a person from the following list by number'
    @people.each_with_index { |person, index| puts "#{index}) #{person}" }
    person_i = gets.chomp
    puts ''
    print 'Date'
    date = gets.chomp
    @rentals.push(Rental.new(date, @books[book_i.to_i], @people[person_i.to_i]))
    puts 'Rental created successfully'
  end

  def list_rentals
    puts 'Select a person from the following list'
    @people.each_with_index { |person, index| puts "#{index}) #{person}" }
    person_i = gets.chomp
    puts ''
    puts 'Rentals:'
    @rentals.each { |rental| puts rental if rental.person.id == @people[person_i.to_i].id }
  end
end

def main
  app = App.new