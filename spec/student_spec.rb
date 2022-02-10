require './student'
require './person'

describe Student do
  context 'test class if created' do
    nam = 'Svabi'
    agie = 18
    aid = nil
    parent_permision = false
    student = Student.new(id: aid, name: nam, age: agie, parent_permission: parent_permision)
    it 'checks name' do
      expect(student.name).to eq(nam)
    end

    it 'checks age' do
      expect(student.age).to eq(agie)
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
