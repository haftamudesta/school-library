require_relative 'nameable'
class BaseDecorator < Nameable
  def initialize(nameable)
    super()
    @nameble = nameable
  end

  def correct_name
    @nameable.correct_name
  end
end
