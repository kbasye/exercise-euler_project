module PythagoreanTriplet
	extend self

	# Find possible values for m and n / factors of b.
	def factor_pairs(b)
		factors = []
		n = 1
		while n <= b/2
			if b%n == 0
				factors << [n, b/n]
			end
			n += 1
		end
		factors
	end

	# Return factor pairs for b, the value of which depends on whether b is odd or even.

	def mn(b)
		factor_pairs(b/2) if b/2 == 0
		factor_pairs(b) if b/2 != 0
	end

	# Based on m and n, calculate a and c.

	def a(m, n)
		m**2 - n**2
	end

	def b(m, n)
		2 * m * n
	end

	def c(m, n)
		m**2 + n**2
	end

	# Return triplet

	def triplet(m, n)
		[a(m, n), b(m, n), c(m, n)]
	end

	# Project Euler problem wants the product of the triplet that adds to 1000

	def sum(numbers = [])
		numbers.inject(:+)
	end

	def product(numbers = [])
		numbers.inject(:*)
	end

	# Driver

	def run(target)
		b = 2
		while b <= target
			mn(b).each do |pair|
				return product(triplet(pair[0], pair[1])) if sum(triplet(pair[0], pair[1])) == target
			end
			b += 1
		end
	end
end

PythagoreanTriplet.run(1000) == 31875000