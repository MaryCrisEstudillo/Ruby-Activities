puts "enter a number:"
num = gets.chomp.to_i
if num > 0 && num < 50 
    puts "number is between 0 and 50"
elsif num > 51 && num < 100
    puts "number is between 0 and 50"
elsif num > 100
    puts "number is above 100"
else 
    puts "number doesn't meet the criteria"
end