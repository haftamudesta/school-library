class Book
  attr_accessor :title, :author, :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(person, date)
    new_rental = Rental.new(date, person, self)
    @rentals << new_rental
    person.rentals << new_rental
  end
end
