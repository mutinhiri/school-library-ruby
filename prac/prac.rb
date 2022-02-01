class Parent 
  def override()
    puts 'Parent override'
  end

  def implicit()
    puts 'Parent implicit'
  end

  def altered()
    puts 'Parent altered'
  end
end

class Child < Parent
  def override()
    puts 'Child overeride'
  end

  def altered()
    puts 'Child Before parent altered'
    super()
    puts 'child after  parent altered'
  end 
end

dad = Parent.new()
son = Child.new()

dad.implicit()
son.implicit()

dad.override()
son.override()

dad.altered()
son.altered()