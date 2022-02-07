# Create HandleRentals class
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
