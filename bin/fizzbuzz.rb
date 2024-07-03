def fizzbuzzes(ary)
  ary.inject([]) do |ary, n|
    ary << fizzbuzz(n)
  end
end

def fizzbuzz(number)
  msg = ''

  msg << 'fizz' if mod(number, 3)
  msg << 'buzz' if mod(number, 5)

  msg.empty? ? number : msg
end

def mod(n, div)
  n % div == 0
end
