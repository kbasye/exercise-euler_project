	def is_prime?(n)
		return false if n <= 0 || n == 1
		return true if n == 2
		2.upto(n-1).each { |num| return false if n % num == 0 }
		true
	end

	def primes_under(n)
		
	end


p primes_under(10)



# [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]