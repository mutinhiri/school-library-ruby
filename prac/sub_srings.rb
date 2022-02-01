class Animal
  def initialize(name, number_of_jobs)
    @id = Random.rand(1..1000)
    @name = name
    @number_of_jobs = number_of_jobs
  end
end

animal_1 = Animal.new("rex", 3)
animal_2 = Animal.new("bob", 8)

puts animal_1
puts animal_2