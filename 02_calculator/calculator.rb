#write your code here
def add(a, b)
	return a + b
end

def subtract(a, b)
	return a - b
end

def sum(a)
	sum = 0
	a.each do |i|
		sum += i
	end
	return sum
end

def multiply(*others)
	product = 1
	others.each do |i|
		product *= i
	end
	return product
end

def power(a, b)
	product = 1
	b.times do 
		product *= a
	end
	return product
end

def factorial(n)
	if n == 0
		return 1
	else 
		return n * factorial(n - 1)
	end
end

