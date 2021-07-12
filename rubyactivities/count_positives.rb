arr = [1,2,3,4,5,6,7,8,9,10,-11,-12,-13,-14,-15]
positives = []
negatives = []
counterPositives = 0
counterNegatives = 0

totalnegatives = 0
arr.each do |num|
    if num > 0 && num <= 10
    positives.push(num)
    counterPositives += 1
    elsif num < 0
    negatives.push(num)
    counterNegatives += num
    end
end
 puts "These are all positives #{positives}"
 puts "These are all negatives #{negatives}"
 puts "positives total #{counterPositives}"
 puts "negatives total #{counterNegatives}"