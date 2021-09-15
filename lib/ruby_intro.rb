# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  arr.each do |val|
    sum += val
  end
  return sum
end

def max_2_sum arr
  len = arr.length()
  if len < 1
    return 0
  elsif len == 1
    return arr[0]
  end

  maxA = arr.min() - 1
  maxB = arr.min() - 1

  arr.each do |val|
    if val >= maxA
      maxB = maxA
      maxA = val
    elsif val >= maxB
      maxB = val
    end
  end

  return maxA + maxB

end

def sum_to_n? arr, n
  seen = {}
  arr.each do |val|
    if seen.has_key?(n-val)
      return true
    end
    seen[val] = 1
  end

  return false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  if s.length() == 0
      return false
  end
  
  if s.match(/^[bcdfghjklmnpqrstvwxyz]/i)
    return true
  end

  return false
end

def binary_multiple_of_4? s
  # check s is valid binary
  if s.length() == 0
      return false
  end
  s.each_char do |ch|
    if ch != "0" && ch != "1"
      return false
    end
  end

  bit = 0
  s.reverse.each_char do |ch|
    if bit >= 2
      return true
    end

    if ch != "0"
      return false
    end

    bit += 1
  end
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
 
  def initialize(isbn, price)
    if !(isbn.is_a? String) or isbn.length() == 0
      raise ArgumentError
    end 
  
    if !(price.is_a? Numeric) or price <= 0
     raise ArgumentError
    end 

    @isbn = isbn
    @price = price
  end

  def price_as_string
    return "$%0.2f" % @price
  end
end
