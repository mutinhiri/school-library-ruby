require './corrector.rb'

describe Corrector do 
    context "With valid input" do 
       
       it "should capitalize a string" do 
          sample = Corrector.new 
          test_string = 'anibal' 
          expect(sample.correct_name(test_string)).to eq'Anibal' 
       end 
         
    #    it "should detect when a string doesn't contain vowels" do 
    #       sa = StringAnalyzer.new 
    #       test_string = 'bcdfg' 
    #       expect(sa.has_vowels? test_string).to be false
    #    end 
       
    # end 
    end
 end
