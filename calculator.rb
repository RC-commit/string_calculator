class Calculator
	def add(input_string)
		return 0 if input_string.empty?

		negative_numbers = input_string.scan(/-[0-9-]+/).flatten

		raise "negative numbers not allowed #{negative_numbers.join(',')}" unless negative_numbers.empty?

		numbers = input_string.scan(/[0-9-]+/).map(&:to_i)

		return numbers.inject(&:+)
	end

end