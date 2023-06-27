require_relative './nameable.rb'
class BaseDecorator<Nameable
    def initialize(nameable)
        @nameble=nameable
    end
    def correct_name
        @nameable.correct_name
    end
end