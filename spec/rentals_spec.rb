require './book'
require './rental'
require './student'
require './teacher'

describe Rental do
  context 'test class creation' do
    book = {title: 'Banking and Finance',author: 'Stephen J'}
    student = {name: 'Bill', age: 23}
    teacher = {name: 'Boaz' , age:  33}
    date = '2022-02-09'
    rental = Rental.new(date, book, student)
    rental_teacher = Rental.new('2022-01-22', book, teacher)


    it 'checks if rental is an instance of class Rental' do
      expect(rental).to be_a Rental
    end
    it 'check creation of a rental' do
      expect(rental) == ("Date: #{@date}, Book \" by #{book[:author]}")
    end
  end
end