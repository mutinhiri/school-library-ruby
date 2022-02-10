# require './book'
# require './rental'
# require './student'
# require './teacher'

# describe Rental do
#   context 'test class creation' do
#     book = {title: 'Banking and Finance',author: 'Stephen J'}
#     student = {name: 'Bill', age: 23}
#     teacher = {name: 'Boaz' , age:  33}
#     date = '2022-02-09'
#     rental = Rental.new(date, book, student)
#     rental_teacher = Rental.new('2022-01-22', book, teacher)

#     it 'checks if rental is an instance of class Rental' do
#       expect(rental).to be_a Rental
#     end
#     it 'check creation of a rental' do
#       expect(rental) == ("Date: #{@date}, Book \" by #{book[:author]}")
#     end
#   end
# end

require './book'
require './rental'
require './student'
require './teacher'

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

    it 'check if book has correct rental' do
      expect(book.rentals[0]).to eq(rental)
    end

    it 'checks if book has two rentals' do
      expect(book.rentals.length).to eq(2)
    end

    it 'checks if student has rental' do
      expect(student.rentals.length).to eq(1)
    end

    it 'checks if student has correct rental' do
      expect(student.rentals[0]).to eq(rental)
    end

    it 'checks if teacher has a rental' do
      expect(teacher.rentals.length).to eq(1)
    end

    it 'check if teacher has correct rental' do
      expect(teacher.rentals[0]).to eq(rental_teacher)
    end

    it 'checks if rental is an instance of class Rental' do
      expect(rental).to be_a Rental
    end
  end
end
