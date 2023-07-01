require './person'
class Teacher < Person
  attr_accessor :specialization

  def initialize(age, specialization, name = 'Unknown', parent_permission = 1)
    super(age, name, parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    1
  end
end
