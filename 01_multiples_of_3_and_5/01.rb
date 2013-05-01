module	MultipleSummer
	extend self
	def multiple_of?(dividend, divisor)
		dividend % divisor == 0
	end
	def select_multiples(from, divisors=[])
		raise 'must select multiples from a number greater than 0' if from <= 0
		divisors.map { |divisor| 1.upto(from-1).to_a.select { |dividend| multiple_of?(dividend, divisor) } }.flatten!.uniq
	end
	def self.sum_multiples(from, divisors=[])
		select_multiples(from, divisors).inject(:+)
	end
end

p MultipleSummer.sum_multiples(1000, [3,5]) == 233168

# raises error if number is less than or equal to 0
# MultipleSummer.sum_multiples(-1, [3,5])