module PrimeFactors
	extend self

	def is_prime?(n)
		return false if n <= 0 || n == 1
		return true if n == 2
		2.upto(n-1).each { |num| return false if n % num == 0 }
		true
	end

	def prime_factors(n, i)
		factors = []
		if n % i == 0 && is_prime?(i)
			quotient = n/i
			factors << i
			until quotient % i != 0
				quotient = quotient / i
				factors << i
			end
		end
		if factors.empty?
			return false
		else
			return factors
		end
	end

	def individual_factor_tree(n)
		i = 2
		factors = {}
		while i <= n
			factors[i] = prime_factors(n, i).count if prime_factors(n,i)
			i += 1
		end
		factors
	end

	def least_common_multiple(numbers_up_to)
		i = 2
		greatest = {}
		while i <= numbers_up_to
			# p "#{i}: #{individual_factor_tree(i)}"
			individual_factor_tree(i).each do |key, val|
				greatest[key] = val unless greatest.include?(key)
				greatest[key] = val if greatest.include?(key) && greatest[key] < val
			end
			i += 1
		end
		greatest.map { |key, val| key ** val }.inject(:*)
	end

end

p PrimeFactors.least_common_multiple(20)