class Animal
    def initialize(type, number_of_legs, name = "Unknown")
    @id = Random.rand(1..1000)
    @name = name
    @number_of_legs = number_of_legs
    @type = type
  end
end

 def id
  @id
 end

 def type 
  @type
 end

 def number_of_legs
  @number_of_legs
 end

 def name
  @name
 end

 def name = (value)
  @name = value
 end
end

animal_1 = Animal.new("rex", 3)
animal_2 = Animal.new("bob", 8)
