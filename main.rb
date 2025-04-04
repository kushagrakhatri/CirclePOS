#!/usr/bin/ruby

puts "Please enter the number:"
num = gets
len = num.length
num = num.reverse!.to_i
sum  = 0 
len.times do
    puts num % 10
    num = num / 10


    if num == 0 
        break
    end
end