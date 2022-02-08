# Create HandleRentals class
class HandleRentals
  def initialize
    @rentals = []
  end

  def add_rental(date, book, person)
    @rentals.push(Rental.new(date,book,person))
    puts 'Rental created successfully'
  end

  def get_rentals(person_id)
    puts ''
    puts 'Rentals:'
    @rentals.each { |rental| puts rental if rental.person.id == person_id }
  end
end
