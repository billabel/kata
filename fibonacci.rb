# find the nth value in the fibonacci squence

# analyze processing time
require 'Benchmark'
time = Benchmark.realtime do

# get the user input for n, the nth value to find
n = gets.to_i

# Using Binet's Formula
# set the square root of 5
@squareRootOfFive = Math.sqrt(5)

def fibonacci(n)
  ((((1 + @squareRootOfFive)** n) - ((1  - @squareRootOfFive)** n)) / ((2 ** n) * @squareRootOfFive)).round
end

puts fibonacci(n).to_s

end

puts time.to_s + " elapsed time"
