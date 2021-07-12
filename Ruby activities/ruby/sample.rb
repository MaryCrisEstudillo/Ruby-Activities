arrNum = [1,2,3,4,5,6,7,8,9,10]
puts arrNum.each{}
h = {a:1, b:2, c:3, d:4}
puts h[:b]
h.merge!(e:5)
puts h
contact_data = [["ana@email.com", "123 Main St.", "555-123-4567"], ["avion@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Analyn Cajocson" => {}, "Avion School" => {}}

# contacts = Hash.new
# contacts["Analyn Cajocson"] = contact_data[0]
# contacts["Avion School"] = contact_data[1]
# puts contacts

# contacts.each do |key, value|
#     contact_data.each do |data|
#       contacts[key].merge!({:email => data[0], :address => data[1], :phone => data[2]})    (efficient codes for iteration)
#     end
#   end