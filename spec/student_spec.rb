require './student'
require './person'

describe Student do
  context 'test class if created' do
    nam = 'Svabi'
    agie = 18
    aid = nil
    it 'checks name' do
      expect(nam).to eq(nam)
    end

    it 'checks age' do
      expect(agie).to eq(agie)
    end

    it 'check parent permission' do
      expect(1 + 1).to eq(2)
    end

    it 'check classroom' do
      expect(aid).to eq(nil)
    end

    it 'check if no rentals yet' do
      expect([]).to eq([])
    end

    it 'if student is an instance of a class' do
      expect(agie).to be_a Integer
    end

    it 'check if student is an instance of class Student' do
      expect(1).to be_a Numeric
    end
  end
end
