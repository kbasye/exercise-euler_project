module PrimeFactors
	extend self

	def is_prime?(n)
		return false if n <= 0 || n == 1
		return true if n == 2
		primes = []
		i = 2
		until i >= n
			return false if n % i == 0
			primes << i if n % i != 0
			i+=1
		end
		return true if !primes.empty?
	end

	def factors_of(n)
		factors = []
		i = 1
		until i >= n
			factors << i if n % i == 0
			i += 1
		end
		factors
	end

	def prime_factors(n)
		prime_factors = factors_of(n).select { |num| is_prime?(num) }
	end

	def greatest(numbers = [])
		greatest = [0]
		numbers.each_with_index { |num, index| greatest[-1] = num if greatest[-1] < num }
		greatest
	end
end

PrimeFactors.greatest(PrimeFactors.prime_factors(13195)) == 29

# takes too long, which makes sense because of is_prime?
# PrimeFactors.greatest(PrimeFactors.prime_factors(600851475143))