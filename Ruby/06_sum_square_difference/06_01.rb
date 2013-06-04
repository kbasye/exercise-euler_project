def sum_of_squares(first)
	sum = 0
	first.downto(1).to_a.each { |num| sum += (num * num) }
	sum
end

def square_of_sum(first)
	sum = first.downto(1).to_a.inject(:+)
	sum * sum
end

square_of_sum(100) - sum_of_squares(100) == 25164150