require './person'

describe Person do
  context 'With valid input' do
    before :each do
      @person = Person.new(name: 'name', age: 22)
    end
    describe '#new' do
      it 'should take 2 parameters and return a Person object' do
        @person.should be_an_instance_of Person
      end
    end

    describe '#id' do
      it 'returns a correct uuid' do
        uuid_regex = /^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/
        expect(uuid_regex.match?(@person.id.to_s.downcase)).to eq(true)
      end
    end

    describe '#age' do
      it 'returns the right age' do
        expect(@person.age).to eq(22)
      end
    end

    describe '#name' do
      it 'returns the right name' do
        expect(@person.name).to eq('name')
      end
    end

    describe '#parent_permission' do
      it 'returns true if the pp is not added' do
        expect(@person.parent_permission).to eq(true)
      end
    end
  end
end
