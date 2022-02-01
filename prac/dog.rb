require './animal.rb'

class Dog < Animal
  def intilialize(color, name = 'Unknown')
    super('dog', 6, name)
    @color = color
  end

  def bring_a_stick
    'here is your stick ....'
  end
end