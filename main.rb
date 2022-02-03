require './student'
require './teacher'
require './classroom'
require './book'
require './rental'

class App
  def initialize
    @peope = []
    @books = []
    @rentals = []
    @options = {
      '1' => 'List all books',
      '2' => 'List all people',
      '3' => 'Create a person Teacher/ Student',
      '4' => 'Create a book',
      '5' => 'Create a rental',
      '6' => 'List all rentals for a given person'
      '7' => 'Exit'
    }
  end

  def run
