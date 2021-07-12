class Transaction

    def type(choose, depo, withdraw, transfer, question2)
        if choose == "deposit"
            depo.type
            question2.type
        elsif choose == "withdraw"
            withdraw.type
            question2.type
        elsif choose == "transfer"
            transfer.type
            question2.type
        else puts "Invalid input! you must enter either deposit, withdraw or transfer keyword only."
        end
    end
end

class QuestionOne

    def type
        puts "What do you want to do?"
    end
end

class QuestionTwo
    def type
        puts "continue transaction? type yes or no"
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
QuestionOne.new.type
Transaction.new.type(gets.chomp, Deposit.new, Withdraw.new, Transfer.new, QuestionTwo.new)
# QuestionTwo.new.type
answer = gets.chomp
if answer == "yes"
    QuestionOne.new.type
    Transaction.new.type(gets.chomp, Deposit.new, Withdraw.new, Transfer.new, QuestionTwo.new)
    # QuestionTwo.new.type
    answer2 = gets.chomp
    if answer2 == "yes"
        QuestionOne.new.type
        Transaction.new.type(gets.chomp, Deposit.new, Withdraw.new, Transfer.new, QuestionTwo.new)
        # QuestionTwo.new.type
        answer3 = gets.chomp
        if answer3 == "yes"
            QuestionOne.new.type
            Transaction.new.type(gets.chomp, Deposit.new, Withdraw.new, Transfer.new, QuestionTwo.new)
            answer4 = gets.chomp
            if answer4 == "yes"
            puts "You have consumed your maximum machine transactions for today, Inquire inside to continue."
            else puts "transaction end"
            end
        else puts "transaction end"
        end
    else puts "transaction end"
    end
else puts "transaction end"
end
