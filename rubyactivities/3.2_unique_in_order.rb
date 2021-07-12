def unique_in_order(sample)
    if sample.class == String 
        sample.squeeze.split('') 
    elsif sample.class == Array 
        sample.join.squeeze.split('')
    else
        'sample is not string or array'
    end
end

p unique_in_order('AAAABBBCCDAAABBB')
p unique_in_order('ABBCcAD')
p unique_in_order([1, 2, 2, 3, 3])

p unique_in_order(:Jhay)