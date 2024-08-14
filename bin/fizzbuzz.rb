def fizzbuzzes(ary)
  response = []

  ary.each do |number|
    response << fizzbuzz(number)
  end

  response
end

def fizzbuzz(number)
  msg = ''

  msg << 'Fizz' if mod(number, 3)
  msg << 'Buzz' if mod(number, 5)

  msg.empty? ? number : msg
end

def mod(number, div)
  number % div == 0
end
