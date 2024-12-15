class StringCalculator
    def add(str_numbers)
        return 0 if str_numbers.empty?

        nums = csv_nums(str_numbers)
        validate_negative!(nums)

        nums.sum
    end

    private

    def csv_nums(str_numbers)
        if str_numbers.start_with?("//")
            delimeter = str_numbers[2]
            str_numbers = str_numbers[2..-1].gsub(delimeter, ',')
        end
        
        str_numbers
            .gsub("\n", ',')
            .split(',')
            .map(&:to_i)
    end

    def validate_negative!(nums)
        negatives = nums.select(&:negative?)

        if negatives.any?
            raise "negative numbers not allowed #{negatives.join(',')}"
        end
    end
end