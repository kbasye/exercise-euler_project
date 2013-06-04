def is_prime?(n)
	return false if n <= 0 || n == 1
	return true if n == 2
	2.upto(n-1).each { |num| return false if n % num == 0 }
	true
end

def nth_prime(num)
	primes = []
	i = 0
	until primes.length == num
		primes << i if is_prime?(i)
		i += 1
	end
	primes.last
end

p nth_prime(6) ==  13
p nth_prime(10001) == 104743