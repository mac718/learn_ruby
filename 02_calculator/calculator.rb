#write your code here
def add x, y
	x + y
end

def subtract x, y
	x - y
end

def sum arr
	sum = 0
	if arr.empty?
		sum = 0
	else
	arr.each do |number|
		sum += number
	end
end
sum
end

def multiply *rest
	sum = 1
	rest.each do |number|
		sum *= number
	end
	sum
end

def power x, y
	x ** y
end
