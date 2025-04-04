#!/usr/bin/ruby

puts "Please enter the number:"
num = gets
len = num.length
num = num.reverse!.to_i
sum  = 0 
ans = ''
count = 0
len.times do
    digit = num % 10
    ans += digit.to_s 
    num = num / 10
    if count % 2 == 0
        sum += digit
    else
        sum += (digit * 3)
    end
    if num == 0 
        break
    end
    count += 1
end
last_digit = 10 - (sum % 10)
ans = ans + last_digit.to_s

puts ans