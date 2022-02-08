require './handle_rentals'
require './handle_books'
require './handle_person'
require './student'
require './teacher'
require './book'
require './rental'
# Create HandleInput class
class MenuChoice
  def initialize
    @books = HandleBooks.new
    @people = HandlePerson.new
    @rentals = HandleRentals.new
  end

  def list_books
    @books.list_books
  end

  def list_people
    @people.list_people
  end

  def list_rentals
    puts 'Select a person from the following list by number (not id)'
    @people.list_people_with_index
    person_i = gets.chomp
    puts ''
    puts 'Rentals:'
    @rentals.get_rentals(@people.get_id_from_index(person_i.to_i))
  end

  def create_person
    print 'Do you want to create a student (1)
    or a teacher (2)? [Input the number]: '
    option = gets.chomp
    print 'Age'
    age = gets.chomp
    print 'Name'
    name = gets.chomp
    case option
    when '1'
      print 'Has parent permission? [Y/N]: '
      pp = gets.chomp
      @people.create_student(age, name, pp)
    when '2'
      print 'Specialization: '
      specialization = gets.chomp
      @people.create_teacher(age, name, specialization)
    else
      puts 'Not a valid option'
      return
    end
    puts 'person created successfully'
  end

  def create_book
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    @books.add_book(title, author)
    puts 'Book created successfully'
  end

  def create_rental
    puts 'Select a book from the following list by number'
    @books.list_books_with_index
    book_i = gets.chomp
    puts ''
    puts 'Select a person from the following list by number (not id)'
    @people.list_people_with_index
    person_i = gets.chomp
    puts ''
    print 'Date: '
    date = gets.chomp
    @rentals.add_rental(date, @books.get_book_from_index(book_i.to_i), @people.get_person_from_index(person_i.to_i))
    puts 'Rental created successfully'
  end
end
