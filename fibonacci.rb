# find the nth value in the fibonacci squence

# analyze processing time
require 'Benchmark'
time = Benchmark.realtime do

# get the user input for n, the nth value to find
n = gets.to_i

def fib(n)
# if n = 0, output 0
  if n == 0
    return 0
# if n = 1, output 1
# if n > 2, output the sum of the previous two values
  elsif n > 0
    a = 0
    b = 1
    n.times do
      c = a
      a = b
      b = c + b
    end
    return a
# if n < 0, output the sum of the previous two values
  elsif n < 0
    a = 0
    b = 1
    n.abs.times do
      c = a
      a = b
      b = c - b
    end
    return a
  end
end

puts fib(n).to_s

end

puts time.to_s + " elapsed time"
