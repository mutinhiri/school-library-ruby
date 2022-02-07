require './student'
require './teacher'
require './classroom'
require './book'
require './rental'
require './app'
require './handle_person'
require './handle_books'
require './handle_rentals'
require './handle_input'

def main
  app = App.new
  app.run
end

main
