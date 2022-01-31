class Animal
  def initialize
    @id = Random.rand(1..1000)
    @name = 'barna'
end

animal_1 = Animal.new
animal_2 = Animal.new

puts animal_1
puts animal_2