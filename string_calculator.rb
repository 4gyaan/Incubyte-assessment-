class StringCalculator
    def add(str_numbers)
        return 0 if str_numbers.empty?

        if str_numbers.start_with?("//")
            delimeter = str_numbers[2]
            str_numbers = str_numbers[2..-1].gsub(delimeter, ',')
        end

        str_numbers
            .gsub("\n", ',')
            .split(',').map(&:to_i).sum
    end
end