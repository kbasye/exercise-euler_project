module PrimeFactors
	extend self

	def is_prime?(n)
		return false if n <= 0 || n == 1
		return true if n == 2
		2.upto(n-1).each { |num| return false if n % num == 0 }
		true
	end

	def prime_factors(n)
		1.upto(n**0.5).to_a.select { |num| n % num == 0 && is_prime?(num)}
	end

	def greatest(prime_factors = [])
		greatest = 0
		prime_factors.each { |factor| greatest = factor if factor > greatest }
		greatest
	end

end

PrimeFactors.greatest(PrimeFactors.prime_factors 600851475143)