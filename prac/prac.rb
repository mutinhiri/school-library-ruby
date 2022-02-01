class Parent 
  def override()
    puts 'Parent override'
  end

  def implict()
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