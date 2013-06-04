module PalindromeProduct
	extend self

	def is_palindrome?(num)
		str = num.to_s.split('')
		i = 0
		str.each do |char|
			return false if str[i] != str[str.length - i - 1]
			i += 1
		end
		return false if str.length.odd?
		return true if str.length.even?
	end

	def largest_palindrome_product(digits)
		factor = ('9' * digits).to_i
		while factor > ('9' + ('0'*(digits-1))).to_i
			i = ('9' * digits).to_i
			while i > ('9' + ('0'*(digits-1))).to_i
				product = factor * i
				return product if is_palindrome?(product)
				i -= 1
			end
			factor -= 1
		end
	end
end


PalindromeProduct.largest_palindrome_product(2) == 9009
PalindromeProduct.largest_palindrome_product(3) == 906609