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
    }
