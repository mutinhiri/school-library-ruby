

require_relative 'person'
# Creates an Student class
class Student < Person
  attr_reader :classroom

  def initialize(age:, name: 'Unknown', parent_permission: true, classroom: 'None')
    super(age:, name:, parent_permission:)
    @classroom = classroom
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end

  def play_hooky
    "¯\(ツ)/¯"
  end

  def to_s
    "[Student] #{super}"
  end
end
