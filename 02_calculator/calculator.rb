#write your code here
def add(numb1,numb2)
  numb1 + numb2
end

def subtract(numb1,numb2)
  numb1 - numb2
end

def sum(numbers)
  total = 0
  numbers.each {|n| total += n}
  total
end

def multiply(numbers)
  total = 1
  numbers.each {|n| total *= n}
  total
end

def factorial(number)
  total = 1;
  while number > 0
    total *= number
    number -= 1
  end
  total;
end

def power(base,exp)
  total = 1
  exp.times{|n| total *= base}
  total
end