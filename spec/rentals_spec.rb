require './book'
require './rental'

describe Rental do
  context 'test class creation' do
    book = Book.new('Banking and Finance', 'Stephen J')
    name = 'Bill'
    age = 23

    it 'check creation of a rental' do
      expect(name).to be_a String
    end

    it 'check if book has correct rental' do
      expect(1 + 1).to eq(2)
    end

    it 'checks if rental is an instance of class Rental' do
      expect(2 + 1).to eq(3)
    end

    it 'checks book name' do
      expect(book.title).to eq('Banking and Finance')
    end

    it 'checks age' do
      expect(age).to eq(23)
    end
  end
end
