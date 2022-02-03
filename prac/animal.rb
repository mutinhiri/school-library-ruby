require "./Composition/remover.rb"
require './Composition/foods.rb'


class Animal
  attr_reader :owner
  ...

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

  def name=(value)
    @name = value
  end

  def remove_leg
    remover = Remover.new()
    @number_of_legs = remover.decrease(@number_of_legs)
  end

  def owner = (owner)
    @owner = owner
    owner.animals.push(self).unless owner.animals.include?(self)
  end
  
end