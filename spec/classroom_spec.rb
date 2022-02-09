require './classroom'

describe Classroom do
  context 'With valid input' do
    it 'should add a student ' do
      new_student = { name: 'Joaquin', age: 15 }
      sample = Classroom.new(new_student)
      students = []
      sample.add_student(new_student)
      expect(students.length) == 1
    end
    it 'should add the correct values' do
      new_student = { name: 'Joaquin', age: 15 }
      sample = Classroom.new(new_student)
      students = []
      sample.add_student(new_student)
      expect(students) != nil 
  end
end

  end
