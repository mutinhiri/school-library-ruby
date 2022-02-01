# frozen_string_literal: true

class Person
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age:, name: 'unknown', parent_permission: true); end

  def can_use_services?
    of_age? || @pqrent_permission
  end

  def of_age?
    @age >= 18
  end
end
