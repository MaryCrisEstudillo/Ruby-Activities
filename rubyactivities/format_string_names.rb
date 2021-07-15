def list names
    strNames = names.map { |name| name[:name] }
    last = strNames.pop
    return "" if strNames == []
    "#{strNames.join(', ')} & #{last}"
 end

 puts list ([{name:"Bart"},{name:"Lisa"},{name:"Maggie"}])
 puts list ([{name:"Bart"},{name:"Lisa"}])
 puts list ([{name:"Bart"}])
 p    list ([])