# Define App class
class App
  # rubocop:disable Metrics/MethodLength
  def initialize
    @people = HandlePerson.new
    @books = HandleBooks.new
    @rentals = HandleRentals.new
    @options = {
      '1' => 'List all books',
      '2' => 'List all people',
      '3' => 'Create a person',
      '4' => 'Create a book',
      '5' => 'Create a rental',
      '6' => 'List all rentals for a given person',
      '7' => 'Exit'
    }
  end
  # rubocop:enable Metrics/MethodLength

  def run
    puts 'Welcome to School Library App!'

    loop do
      puts ''
      puts 'Please choose an option by entering a number:'
      @options.each { |key, value| puts "#{key}) #{value}" }
      option = gets.chomp
      break if option == '7'

      HandleInput.handle_initialize(option)
    end
  end
end