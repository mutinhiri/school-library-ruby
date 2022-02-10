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
      it 'returns a correct uuid' do
        uuid_regex = /^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/
        expect(uuid_regex.match?(@person.id.to_s.downcase)).to eq(true)
      end
    end
  end
end
