class StringCalculator
    def add(str_numbers)
        sum = 0
        
        str_numbers.each_char do |char|
            sum += char.to_i if char =~ /\d/
        end

        sum
    end
end