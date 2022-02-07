# Create HandleInput class
class HandleInput
  # rubocop:disable Metrics/MethodLength
  def handle_initialize(option)
    book = HandleBooks.new
    person = HandlePerson.new
    input = HandleInput.new

    case option
    when '1'
      book.list_books
    when '2'
      person.list_people
    when '3'
      input.handle_add_person
    when '4'
      input.handle_add_book
    when '5'
      input.handle_add_rental
    when '6'
      input.handle_list_rentals
    else
      puts 'Not a valid option'
    end
  end
  # rubocop:enable Metrics/MethodLength

  # rubocop:disable Metrics/MethodLength, Metrics/AbcSize
  def handle_add_person
    print 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
    option = gets.chomp
    new_person = HandlePerson.new
    case option
    when '1'
      print 'Age: '
      age = gets.chomp
      print 'Name: '
      name = gets.chomp
      print 'Has parent permission? [Y/N]: '
      pp = gets.chomp
      new_person.create_student(age, name, pp)
    when '2'
      print 'Age: '
      age = gets.chomp
      print 'Name: '
      name = gets.chomp
      print 'Specialization: '
      specialization = gets.chomp
      new_person.create_teacher(age, name, specialization)
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
    new_book = HandleBooks.new
    new_book.add_book(title, author)
  end

  def handle_add_rental
    new_rental = HandleRentals.new
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
    new_rental.add_rental(date, book_i, person_i)
  end
  # rubocop:enable Metrics/MethodLength, Metrics/AbcSize

  def handle_list_rentals
    new_rental = HandleRentals.new
    puts 'Select a person from the following list by number (not id)'
    @people.each_with_index { |person, index| puts "#{index}) #{person}" }
    person_i = gets.chomp
    puts ''
    puts 'Rentals:'
    new_rental.list_rentals(person_i)
  end
end
