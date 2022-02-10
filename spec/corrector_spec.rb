require './corrector'

describe Corrector do
  context 'With valid input' do
    it 'should capitalize a string' do
      sample = Corrector.new
      test_string = 'anibal'
      expect(sample.correct_name(test_string)).to eq 'Anibal'
    end

    it 'should return a string no longer than 10 characters' do
      sample = Corrector.new
      test_string = 'anibalamoroso'
      expect(sample.correct_name(test_string)).to eq 'Anibalamor'
    end
  end
end
