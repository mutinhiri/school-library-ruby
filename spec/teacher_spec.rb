# require './teacher'
require './person'

describe Person do
  context 'test class creation' do
    nme = 'Sibo'
    agea = '24'
    spec = 'Math'

    it 'check name' do
      expect(nme).to eq(nme)
    end

    it 'check age' do
      expect(agea).to eq(agea)
    end

    it 'check specialization' do
      expect(spec).to eq('Math')
    end

    it 'check if no rentals yet' do
      expect([]).to eq([])
    end

    it 'checks if student is an instance of class Person' do
      expect([]).to be_a Array
    end

    it 'check if student is an instance of class Student' do
      expect(agea).to be_a String
    end
  end
end
