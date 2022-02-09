require_relative '../book'
require_relative '../rental'
require_relative '../student'
require_relative '../teacher'

describe Rental do 
  context 'test class creation' do 
    book = Book.new('Banking and Finance', 'Stephen J')
    student = Student.new(id: nil, name: 'Bill', age: 23, parent_permission: true)
    teacher = Teacher.new(id: nil, name: 'Boaz', age: 33, specialization: 'Finance')
    date = '2022-02-09'
    rental = Rental.new(date, book, student)
    rental_teacher = Rental.new('2022-01-22', book, teacher)

    it 'check creation of a rental' do
      expect(rental.to_s) == ("Date: #{@date}, Book \" by #{book.author}")
    end

    it 'check if book has two rentals' do
