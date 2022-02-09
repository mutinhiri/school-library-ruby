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
