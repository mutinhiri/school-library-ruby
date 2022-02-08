# Create HandleRentals class
class HandleRentals
  attr_reader :rentals

  def initialize
    @rentals = []
  end

  def read_rentals_json(people = [], books = [])
    file = 'rentals.json'

  def add_rental(date, book, person)
    @rentals.push(Rental.new(date, book, person))
    puts 'Rental created successfully'
  end

  def get_rentals(person_id)
    puts ''
    puts 'Rentals:'
    @rentals.each { |rental| puts rental if rental.person.id == person_id }
  end
end
