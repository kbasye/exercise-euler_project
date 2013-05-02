module Fibonacci
	extend self

	def nth_fib(num)
		return num if num == 0 || num == 1
		nth_fib(num - 1) + nth_fib(num - 2)
	end

	def first_n_fib_nums(terms)
		2.upto(terms + 1).to_a.map { |num| nth_fib(num) }
	end

	def select_even(fib_nums=[])
		fib_nums.select { |fib_num| fib_num.even? }
	end

	def sum(fib_nums = [])
		fib_nums.inject(:+)
	end

	def build_until(val)
		terms = [0, 1]
		i = 2
		until terms[-1] >= val
			terms << terms[i-1] + terms[i-2]
			i += 1
		end
		terms[0..-2]
	end

end

Fibonacci.sum(Fibonacci.select_even(Fibonacci.build_until(4000000))) == 4613732