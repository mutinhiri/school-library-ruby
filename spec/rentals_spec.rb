require './book'
require './rental'
require './student'

describe Rental do
  context 'test class creation' do
    book = Book.new('Banking and Finance', 'Stephen J')
    name = 'Bill'
    age = 23
    student = Student.new(id: nil, name:, age:, parent_permission: true)
    date = '2022-02-09'
    rental = Rental.new(date, book, student)

    it 'check creation of a rental' do
      expect(rental.to_s) == ("Date: #{@date}, Book \" by #{book.author}")
    end

    it 'check if book has correct rental' do
      expect(book.rentals[0]).to eq(rental)
    end

    it 'checks if rental is an instance of class Rental' do
      expect(rental).to be_a Rental
    end
  end
end
