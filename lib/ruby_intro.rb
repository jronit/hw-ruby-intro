# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  # YOUR CODE HERE
  tot = 0
  arr.each do |num|
    tot = tot + num
  end
  return tot

end

def max_2_sum(arr)
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  end
  if arr.length == 1
    return arr[0]
  end
  sorted = arr.sort
  len = sorted.length
  return sorted[len - 1] + sorted[len - 2]
end

def sum_to_n?(arr, n)
  # YOUR CODE HERE
  arr.each_with_index do |first, i|
    arr.each_with_index do |second, j|
      if i != j && first + second == n
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant?(s)
  # YOUR CODE HERE
  if s.length == 0
    return false
  end
  first = s[0].downcase
  all_letters = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
  if all_letters.include?(first)
    return true
  end
  return false
end

def binary_multiple_of_4?(s)
  # YOUR CODE HERE
  if s.length == 0
    return false
  end
  s.each_char do |char|
    if char != "0" && char != "1"
      return false
    end
  end
  num = s.to_i(2)
  if num % 4 == 0
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
  # YOUR CODE HERE
  def initialize(isbn, price)
    if isbn == ""
      raise ArgumentError
    end
    if price <=0
      raise ArgumentError
    end

    @isbn = isbn
    @price = price
  end
  def isbn
    return @isbn
  end

  def price
    return @price
  end

  def isbn=(new_isbn)
    @isbn = new_isbn
  end
  def price=(new_price)
    @price = new_price
  end

  def price_as_string
    return "$" + sprintf("%.2f", @price)
  end

end
