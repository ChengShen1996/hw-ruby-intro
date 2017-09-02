# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum_number=0;
  arr.each{|a| sum_number+=a};
  return sum_number;

end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.empty?
  	return 0;
  if arr.length==1
  	return arr[0]
  temp=arr.sort
  return temp[-1]+temp[-2]
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  temp=[]
  count=0
  for i in arr
  	for j in arr
  		temp[count]=i+j 
  		count+=1 
  	end
  end
  temp.each{
  	|a| 
  	if a==n
  		return true
  	end
  }
  return false

end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello,"+name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if !/\A[a-zA-Z&&[^aeiouAEIOU]]/.match(s)
		return false
	else
		return true
	end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if !/\A[01]+00\Z/.match(s)
		return false
	else
		return true
	end
end

# Part 3

class BookInStock
# YOUR CODE HERE
def initialize(isbn,price)
		if isbn.empty? || price<=0
			raise ArgumentError
		else
			@isbn=isbn
			@price=price
		end
	end
	attr_accessor:isbn
	attr_accessor:price
	def price_as_string
		sprintf('$%.2f' ,@price)
	end
end
