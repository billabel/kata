# find the nth value in the fibonacci squence
#
# get the user input for n, the nth value to find
n = gets.to_i

def fib(n)
# if n = 0, output 0
  if n == 0
    0
# if n = 1, output 1
  elsif n == 1
    1
# if n > 2, output the sum of the previous two values
# if n < 0, output the sum of the previous two values
  else
    fib(n-1) + fib(n-2)
  end
end

puts fib(n).to_s
