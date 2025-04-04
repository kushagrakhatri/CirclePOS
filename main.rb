#!/usr/bin/env ruby

puts "Please enter the first 12 digits of an ISBN:"

#get the input; remove traliing whitespace
incomplete_ISBN = gets.chomp  

#validating that the input is of 12 digits
unless /^[\d]{12}$/.match(incomplete_ISBN)
    puts "Not a valid input (should be 12 digits)"
    exit
end
sum  = 0 


#itearting over each digit; alternatively add the digit or multiplying by 3 and then adding it to the sum
incomplete_ISBN.each_char.with_index do |digit, i|

  if i.even?
    sum += digit.to_i
  else
    sum += (digit.to_i * 3)
  end
end

#alterantive way to get the sum!
sum2 = incomplete_ISBN.each_char.with_index.map { |n, i| i.even? ? n.to_i : (n.to_i * 3)}.sum

#getting the last digit by modding the sum by 10 then substracting it by 10 (also 0 in case of sum is 0)
last_digit = (10 - (sum % 10)) % 10

#appending the new digit calculated to orginal
complete_ISBN = incomplete_ISBN + last_digit.to_s

puts "Complete ISBN is : " + complete_ISBN
