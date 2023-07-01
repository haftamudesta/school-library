require_relative 'app'

def main
  is_active = true
  puts 'Welcome to School Library App!'
  while is_active
    print "\nPlease choose an option by entering a number:\n\n"
    puts '1. List all books'
    puts '2. List all people'
    puts '3. Create a person'
    puts '4. Create a book'
    puts '5. Create a rental'
    puts '6. List all rentals for a given person id'
    puts '7. Exit'
    option = gets.chomp
    if option == '7'
      exit!
    elsif option == '3'
      opcion3
    else
      send("option#{option}")
    end
  end
end

main
