require './student'
require './teacher'
require './classroom'
require './book'
require './rental'
require './app'
require './handle_person'




class HandleRentals
  def initialize
    @rentals = []
  end

  def add_rental(date, book, person)
    @rentals.push(Rental.new(date, @books[book.to_i], @people[person.to_i]))
    puts 'Rental created successfully'
  end

  def list_rentals(person_id)
    puts ''
    puts 'Rentals:'
    @rentals.each { |rental| puts rental if rental.person.id == @people[person_id.to_i].id }
  end
end

class HandleInput
  def handle_initialize(option)
    case option
    when '1'
      HandleBooks.list_books
    when '2'
      HandlePerson.list_people
    when '3'
      HandleInput.handle_add_person
    when '4'
      HandleInput.handle_add_book
    when '5'
      HandleInput.handle_add_rental
    when '6'
      HandleInput.handle_list_rentals
    else
      puts 'Not a valid option'
    end
  end

  def handle_add_person
    print 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
    option = gets.chomp
    case option
    when '1'
      print 'Age: '
      age = gets.chomp
      print 'Name: '
      name = gets.chomp
      print 'Has parent permission? [Y/N]: '
      pp = gets.chomp
      HandlePerson.create_student(age, name, pp)
    when '2'
      print 'Age: '
      age = gets.chomp
      print 'Name: '
      name = gets.chomp
      print 'Specialization: '
      specialization = gets.chomp
      HandlePerson.create_teacher(age, name, specialization)
    else
      puts 'Not a valid option'
      nil
    end
  end

  def handle_add_book
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    HandleBooks.add_book(title, author)
  end

  def handle_add_rental
    puts 'Select a book from the following list by number'
    @books.each_with_index { |book, index| puts "#{index}) #{book}" }
    book_i = gets.chomp
    puts ''
    puts 'Select a person from the following list by number (not id)'
    @people.each_with_index { |person, index| puts "#{index}) #{person}" }
    person_i = gets.chomp
    puts ''
    print 'Date: '
    date = gets.chomp
    HandleRentals.add_rental(date, book_i, person_i)
  end

  def handle_list_rentals
    puts 'Select a person from the following list by number (not id)'
    @people.each_with_index { |person, index| puts "#{index}) #{person}" }
    person_i = gets.chomp
    puts ''
    puts 'Rentals:'
    HandleRentals.list_rentals(person_i)
  end
end

def main
  app = App.new
  app.run
end

main
