# find the nth value in the fibonacci squence

# analyze processing time
require 'Benchmark'
time = Benchmark.realtime do

# store the calculated fibonacci numbers
@cache = {}
@cache[0] = 0
@cache[1] = 1

# get the user input for n, the nth value to find
n = gets.to_i

def fib(n)
# if n = 0, output 0
# if n = 1, output 1
# if n > 2, output the sum of the previous two values
# if n < 0, output the sum of the previous two values
  @cache[n] ||= fib(n-1) + fib(n-2)
end

puts fib(n).to_s

end

puts time.to_s + " elapsed time"
