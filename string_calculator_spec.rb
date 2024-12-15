require "./string_calculator"

RSpec.describe StringCalculator do
    subject { described_class.new }
    
    describe '#add' do
        context 'When empty number provided to add' do  
            it 'should return 0' do
                expect(subject.add("")).to eq(0)
            end
        end

        context 'When single number provided to add' do  
            it 'should return the number' do
                expect(subject.add("1")).to eq(1)
                expect(subject.add("5")).to eq(5)
            end
        end
    end
  end