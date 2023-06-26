class Person
  attr_accessor :id, :name, :age

  def initialize(age, name = 'Unknown', _parent_permission = 1)
    @age = age
    @name = name
    @parent_permission = 1
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  private

  def of_age?
    @age >= 18
  end
end
