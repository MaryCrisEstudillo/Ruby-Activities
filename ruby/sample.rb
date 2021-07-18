# arrNum = [1,2,3,4,5,6,7,8,9,10]
# puts arrNum.each{}
# h = {a:1, b:2, c:3, d:4}
# puts h[:b]
# h.merge!(e:5)
# puts h
# contact_data = [["ana@email.com", "123 Main St.", "555-123-4567"], ["avion@email.com", "404 Not Found Dr.", "123-234-3454"]]

# contacts = {"Analyn Cajocson" => {}, "Avion School" => {}}

# contacts = Hash.new
# contacts["Analyn Cajocson"] = contact_data[0]
# contacts["Avion School"] = contact_data[1]
# puts contacts

# contacts.each do |key, value|
#     contact_data.each do |data|
#       contacts[key].merge!({:email => data[0], :address => data[1], :phone => data[2]})    (efficient codes for iteration)
#     end
#   end

# def centuryFromYear(year)
#      year.to_s[1..4].to_i
#     #   year += 100
#     # end
  
#     # year.to_s[0..1].to_i
#   end
  
#   p centuryFromYear(1705867) 
#   p centuryFromYear(190000) 
#   p centuryFromYear(160100) 
#   p centuryFromYear(200000) 

# def list names
#   result = ""
#   num = names.length
#   x = 0
#   puts num - 1
#   names.each do |key,value|
#     key.each do |key2, value2|
#       x += 1
#       x == num -1 ? (result << value2 + " & ") : (result << value2 +", ")
#     end
#   end

#   result[0..-3]
# end
