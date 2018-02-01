# When done, submit this entire file to the autograder.

# Part 1

def sum arr
	return arr.inject(0, :+)
end

def max_2_sum arr
	arr = arr.sort
	if (arr.size > 1)
		return arr[-2...arr.size].inject(0, :+)
	elsif arr.size === 1
		return arr.first
	else
		return 0
	end
end

def sum_to_n? arr, n
	# Complementary dictionary/hash table of what we need
	c = {}
	# We don't need their idx, just have to return true/false
	arr.each do |i|
		# Look for the other item we need (the 'complement')
		# Otherwise, insert it!
		n_c = n > 0 ? n-i : i.abs + n 
		if (c.key?(i))
			return true
		else
			c[n_c] = 0
		end
	end
	return false
end

# Part 2

def hello(name)
	return "Hello, "+name
end

def starts_with_consonant? s
	# 1. Check that it's not a vowel
	# 2. Check that it's not an empty string
	# 3. Check that the first item is alphanumeric
	if !["a", "e", "i", "o", "u"].include? s[0,1].downcase and s.length > 0 and !s.match(/\A[a-zA-Z0-9]*\z/).nil?
		return true
	end
	return false
end

def binary_multiple_of_4? s
	# 1. Check that string is only 0 or 1
	# 2. Check for empty string
	# 3. Check that the string, converted to binary, is modulo 4
	if s.count('01') != s.size or s.size == 0 or s.to_i(2) % 4 != 0
		return false
	end
	return true
end

# Part 3

class BookInStock
	attr_accessor :isbn, :price

	def initialize isbn, price
		unless (isbn.length > 0 && price > 0)
			raise ArgumentError.new("Incorrect Arguments");
		end
		self.isbn = isbn;
		self.price = price;
	end

	def price_as_string
		return format("$%.2f", self.price)
	end

end
