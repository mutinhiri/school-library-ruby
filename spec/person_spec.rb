require './person'

describe Person do
  context 'With valid input' do
    before :each do
      @person = Person.new 'id01', 'age', 'name', 'parent_permission'

      describe '#new' do
        it 'should take 4 parameters and return a Person object' do
          @person.should_be_an_instance_of Person
        end
      end

      describe '#id' do
        it 'returns the correct id' do
         @person.id.should eql 'id01'
        end
      end

    end
  end
end
