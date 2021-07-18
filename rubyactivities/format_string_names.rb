def list names
    strNames = names.map { |name| name[:name] }
    lastName = strNames.pop
    return "" if strNames == []
    "#{strNames.join(', ')} & #{lastName}"
 end

 puts list ([{name:"Bart"},{name:"Lisa"},{name:"Maggie"}])
 puts list ([{name:"Bart"},{name:"Lisa"}])
 puts list ([{name:"Bart"}])
 p    list ([])