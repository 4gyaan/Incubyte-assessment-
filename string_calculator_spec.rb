require "./string_calculator"

RSpec.describe StringCalculator do
    subject { described_class.new }
    
    describe '#add' do
        context 'When empty number provided to add' do  
            it 'should return 0' do
                expect(subject.add("")).to eq(0)
            end
        end
    end
  end