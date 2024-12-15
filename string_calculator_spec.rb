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
        
        context 'When multiple comma separated numbers provided to add' do  
            it 'should return the sum of the numbers' do
                expect(subject.add("1, 2, 3, 4")).to eq(10)
                expect(subject.add("10, 10, 15")).to eq(35)
            end
        end
    end
  end