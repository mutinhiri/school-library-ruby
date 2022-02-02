class Owner 
  attr_accessor :name
  attr_reader :animals

  def initialize(name)
    @name = name@animals = []