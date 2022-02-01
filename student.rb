# frozen_string_literal: true

require_relative 'person'
# class inherit
class Student < Person
  attr_reader :classroom

  def initialize(age:, name: 'Unknown', parent_permission: true, classroom: 'None')
    super(age: age, name: name, parent_permission: parent_permission)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
