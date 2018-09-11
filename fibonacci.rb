# find the nth value in the fibonacci squence

require "matrix"

# analyze processing time
require 'Benchmark'
time = Benchmark.realtime do

# get the user input for n, the nth value to find
n = gets.to_i

# Donald Knuth's Q matrix
def fib(n)
  # find the nth power of the Q matrix, return row 0, column 1
  (Matrix[[1,1], [1,0]] ** n)[0,1]
end

puts fib(n).to_s

end

puts time.to_s + " elapsed time"
