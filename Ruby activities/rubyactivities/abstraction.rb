class Transaction
    def initialize
        puts "What do you want to do?"
        chooseTransac = gets.chomp
        if chooseTransac == "deposit"
            puts "Enter Deposit Amount:"
            @deposit  = gets.chomp.to_i
            @currentMoney = 200
            deposit_amount
        elsif chooseTransac == "withdraw"
            puts "Enter Withdraw Amount:"
            @withdraw = gets.chomp.to_i
            @currentMoney = 200
            withdraw_amount
        elsif chooseTransac == "transfer"
            puts "Enter Transfer Amount:"
            @transfer = gets.chomp.to_i
            @currentMoney = 200
            transfer_amount
        else puts "input error! please enter either deposit, withdraw or transfer word only"
         end
    end 
    private
    def deposit_amount
        puts "You deposited #{@deposit} in your account. Your current balance is #{@deposit + @currentMoney}"
    end
    def withdraw_amount
        puts "You Withdraw #{@withdraw} in your account. Your current balance is #{@currentMoney - @withdraw}"
    end
    def transfer_amount
        puts "you transfer #{@transfer} in other account. Your current balance is #{@currentMoney - @transfer}"
    end
end
Transaction.new