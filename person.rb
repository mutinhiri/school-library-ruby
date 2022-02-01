class Person 
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age:, name: 'unknown', parent_permission: true); end
end
