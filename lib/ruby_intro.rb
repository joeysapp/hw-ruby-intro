# When done, submit this entire file to the autograder.

# Part 1

def sum arr
	return arr.inject(0, :+)
end

def max_2_sum arr
	arr = arr.sort
	if (arr.size > 1)
		puts arr
		return arr[-2...arr.size].inject(0, :+)
	elsif arr.size === 1
		return arr.first
	else
		return 0
	end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
