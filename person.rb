require_relative 'nameable'
class Person < Nameable
  attr_accessor :id, :name, :age

  def initialize(age, name = 'Unknown', _parent_permission = 1)
    super()
    @age = age
    @name = name
    @parent_permission = 1
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  def correct_name
    @name
  end

  private

  def of_age?
    @age >= 18
  end
end
