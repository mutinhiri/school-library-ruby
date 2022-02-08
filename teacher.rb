require_relative 'person'
require 'json'
# class inherit
class Teacher < Person
  attr_accessor :specialization
  def initialize(age:, specialization:, name: 'Unknown', parent_permission: true)
    super(age:, name:, parent_permission:)
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
