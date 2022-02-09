require './teacher'
require './person'

describe Teacher do 
  context 'test class creation' do
    name = 'Sibo'
    age = '24'
    specialization = 'Math'
    teacher = Teacher.new(id: nil, name: name, age: age, specialization: specialization)
    it 'check name' do
      expect(teacher.name).to eq(name)
    end

    it 'check age' do
      expect(teacher.age).to eq(age)
    end

    it 'check specialization' do
      expect(teacher.specialization).to eq(specialization)
    end

    it 'check if no rentals yet' do
      expect(teacher.rentals).to eq([])
    end

    it 'checks if student is an instance of class Person' do
      expect(teacher).to be_a Person
    end

    it 'check if student is an instance of class Student' do
      expect(teacher).to be_a Teacher
    end
  end
end
