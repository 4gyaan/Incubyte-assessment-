class StringCalculator
    def add(str_numbers)
        str_numbers.split(",").map(&:to_i).sum
    end
end