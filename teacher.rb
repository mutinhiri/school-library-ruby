require_relative 'person'
require 'json'
# class inherit
class Teacher < Person
  attr_accessor :specialization

  def initialize(specialization:, id: nil, age: 22, name: 'Unknown')
    super(id:, age:, name:)
    @parent_permission = true
    @specialization = specialization
  end

  def can_use_services
    true
  end

  def to_s
    "[Teacher] #{super}"
  end

  def to_json(_options = {})
    {
      'id' => @id,
      'age' => @age,
      'name' => @name,
      'specialization' => @specialization
    }
  end
end
