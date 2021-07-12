# puts "How Old are you?"
# age = gets.chomp.to_i
# agePlusTen = "in 10 years you will be: #{age+10}"
# agePlusTwenty = "in 20 years you will be: #{age+20}"
# agePlusThirty = "in 30 years you will be: #{age+30}"
# agePlusForty = "in 40 years you will be: #{age+40}"
# puts agePlusTen
# puts agePlusTwenty
# puts agePlusThirty
# puts agePlusForty

# for num in ("a"..."z").reverse_each
#     puts num
# end

# display = puts "Enter something"
# userInput = gets.chomp

# while userInput
#     puts "👉👈"
#     userInput = gets.chomp
#     break if userInput === "STOP"
# end

# arr = [6, 3, 1, 8, 4, 2, 10, 65, 102]
# newArr = []
# dvisibleBy2 = arr.find_all{ |number| number.even?}
# newArr.push(dvisibleBy2)
# puts newArr

# ***********name spacing************
# module Language
#     class Ruby
#         def info
#             puts "hey"
#         end
#     end
# end

# ruby = Language::Ruby.new().info

# **********Polymorphism*************
# class Person
#     def initialize(first, last, age)
#         @first_name = first
#         @last_name = last
#         @age = age
#     end

#     def birthday
#       puts @age += 1
#     end

#     def introduce
#         puts "Hi everyone. My name is #{@first_name} #{@last_name} #{@age}."
#     end
# end
# class Student < Person
#     def introduce 
#         puts "Hello teacher. My name is #{@first_name} #{@last_name}."
#     end
# end

# class Teacher < Person

#     def introduce 
#         puts "Hello class. My name is #{@first_name} #{@last_name}."
#     end
# end

# john = Student.new("John", "Doe", 18)
# john.introduce
# imee = Teacher.new("Imee", "Santos", 35)
# imee.introduce
# person = Person.new("mary", "go", 55)
# person.birthday

# *************Abstraction*****************
# class Transaction
#     def initialize
#         puts "What do you want to do?"
#         chooseTransac = gets.chomp
#         if chooseTransac == "deposit"
#                 puts "Enter Deposit Amount:"
#                 @deposit  = gets.chomp.to_i
#                 @currentMoney = 200
#                 deposit_amount
#         elsif chooseTransac == "withdraw"
#                 puts "Enter Withdraw Amount:"
#                 @withdraw = gets.chomp.to_i
#                 @currentMoney = 200
#                 withdraw_amount
#         elsif chooseTransac == "transfer"
#                 puts "Enter Transfer Amount:"
#                 @transfer = gets.chomp.to_i
#                 @currentMoney = 200
#                 transfer_amount
#         else puts "input error! please enter either deposit, withdraw or transfer word only"
#          end
#     end 
#     private
#     def deposit_amount
#         puts "You deposited #{@deposit} in your account. Your current balance is #{@deposit + @currentMoney}"
#     end
#     def withdraw_amount
#         puts "You Withdraw #{@withdraw} in your account. Your current balance is #{@currentMoney - @withdraw}"
#     end
#     def transfer_amount
#         puts "you transfer #{@transfer} in other account. Your current balance is #{@currentMoney - @transfer}"
#     end
# end
# newTransac = Transaction.new()


# ****************polymorphism*****************

# class Movie
#     def initialize(title, year, genre)
#         @title = title
#         @year  = year
#         @genre = genre
#     end
#     def movies
#         puts "Your favorite movie is Title: #{@title} Year: #{@year} Genre: #{@genre}"
#     end
# end

# class Top < Movie
#     def movies
#         puts "The recent Top movie is Title: #{@title} Year: #{@year} Genre: #{@genre}"
#     end
# end
# class You < Movie
#     def movies
#             puts "What's your favorite movie?"
#             puts "Enter Title"
#             @title = gets.chomp
#             puts "Enter Year"
#             @year = gets.chomp.to_s
#             puts "Enter Genre"
#             @genre = gets.chomp
#         puts "Your favorite movie is Title: #{@title} Year: #{@year} Genre: #{@genre}"
#     end
# end

# topMovie = Top.new("Parasite", 2019, "thriller, comedy, drama")
# puts topMovie.movies
# myMovie = You.new(@title, @year, @genre)
# # puts myMovie.movies

# *****************count positives*******************

# arr = [1,2,3,4,5,6,7,8,9,10,-11,-12,-13,-14,-15]
# positives = []
# negatives = []
# counterPositives = 0
# counterNegatives = 0

# totalnegatives = 0
# arr.each do |num|
#     if num > 0 && num <= 10
#     positives.push(num)
#     counterPositives += 1
#     elsif num < 0
#     negatives.push(num)
#     counterNegatives += num
#     end
# end
#  puts "These are all positives #{positives}"
#  puts "These are all negatives #{negatives}"
#  puts "positives total #{counterPositives}"
#  puts "negatives total #{counterNegatives}"

class Transaction

    def type(choose, depo, withdraw, transfer)
        if choose == "deposit"
            depo.type
        elsif choose == "withdraw"
            withdraw.type
        elsif choose == "transfer"
            transfer.type
        else puts "Invalid input! you must enter either deposit, withdraw or transfer keyword only."
        end
    end
end

class Deposit

    def type
        puts "Enter Deposit Amount:"
        input = gets.chomp
        puts "You deposited #{input}"
    end
end

class Withdraw

    def type
        puts "Enter Withdraw Amount:"
        input = gets.chomp
        puts "You Withdrew #{input}"
    end
end

class Transfer

    def type
        puts "Enter Transfer Amount:"
        input = gets.chomp
        puts "You Transfered #{input} to other account"
    end
end

puts "What do you wan to do?"
transac = Transaction.new.type(gets.chomp, Deposit.new, Withdraw.new, Transfer.new)
puts "continue transaction? type yes or no"
answer = gets.chomp
if answer == "yes"
    puts "What do you wan to do?"
    transac = Transaction.new.type(gets.chomp, Deposit.new, Withdraw.new, Transfer.new)
    puts "continue transaction? type yes or no"
    answer2 = gets.chomp
    if answer2 == "yes"
        puts "What do you wan to do?"
        transac = Transaction.new.type(gets.chomp, Deposit.new, Withdraw.new, Transfer.new)
    else puts "transaction end"
    end
else puts "transaction end"
end




    
