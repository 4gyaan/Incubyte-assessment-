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

        context 'When any amount of numbers provided to add' do
            let(:any_amount_of_numbers1) { (1..100).to_a }
            let(:any_amount_of_numbers2) { (1..1000).to_a }
            let(:convert_csv) { proc { |nums| nums.inject('') { |csv, num| csv += num.to_s + ','} } }

            it 'should return the sum of the numbers' do
                expect(subject.add(convert_csv.call(any_amount_of_numbers1))).to eq(any_amount_of_numbers1.sum)
                expect(subject.add(convert_csv.call(any_amount_of_numbers2))).to eq(any_amount_of_numbers2.sum)
            end
        end

        context 'When new lines between numbers provided to add' do  
            it 'should return the sum of the numbers' do
                expect(subject.add("1\n 2, 3\n 4")).to eq(10)
            end
        end

        context 'When provide different delimeter between numbers to add' do  
            it 'should return the sum of the numbers' do
                expect(subject.add("//;\n1;2")).to eq(3)
            end
        end
    end
  end