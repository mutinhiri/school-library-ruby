require_relative 'corrector'
require './rental'
# main class person
class Person
  attr_accessor :name, :age, :rentals
  attr_reader :id

  def initialize(age:, name: 'Unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @age = age
    @name = name
    @parent_permission = parent_permission
    @corrector = Corrector.new
    @rentals = []
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  def of_age?
    @age >= 18
  end

  def validate_name
    @name = @corrector.correct.name(@name)
  end

  def to_s
    "Name: #{@name}, Age: #{@age}, Id: #{@id}"
  end

  def rent_book(date, book)
    Rental.new(date, book, self)
  end
end
