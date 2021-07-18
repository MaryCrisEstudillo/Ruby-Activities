def centuryFromYear(year)
   divideYear = year/100
   divideYear.to_i == year/100.0? divideYear : divideYear+1
end
puts centuryFromYear(1705)
puts centuryFromYear(1900)
puts centuryFromYear(1601)
puts centuryFromYear(2000)

