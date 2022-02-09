require './student'
require './person'

describe Student do
  context 'test class if created' do
    name = 'Svabi'
    age = 18
    parent_permission = false
    student = Student.new(id: nil, name: name, age: age, parent_permission: parent_permission)
    it 'checks name' do
      expect(student.name).to eq(name)
    end 

    it 'checks age' do
      expect(student.age).to eq(age)
    end

    it 'check parent permission' do
      expect(student.parent_permission).to eq(false)
    end

    it 'check classroom' do
      expect(student.classroom).to eq('None')
    end

    it 'check if no rentals yet' do
      expect(student.rentals).to eq([])
    end

    it 'if student is an instance of a class' do
      expect(student).to be_a Person
    end

    it 'check if student is an instance of class Student' do
      expect(student).to be_a Student
    end
  end
end


