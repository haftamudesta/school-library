require './person'
class Student < Person
  def initialize(age, classroom, name = 'Unknown', parent_permission = 1)
    super(age, name, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    puts '"¯\(ツ)/¯"'
  end
end
