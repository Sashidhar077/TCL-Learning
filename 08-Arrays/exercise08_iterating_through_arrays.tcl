if {0} {
Create the following array.

Key	Value
name	PrimeTime
company	Synopsys
version	R2025.06
license	Active
platform	Linux

Display:

All entries
Keys in alphabetical order
Total number of entries
}

array set p {
    name	PrimeTime
    company	Synopsys
    version	R2025.06
    license	Active
    platform	Linux
}
puts "\n========EDA Tool Information=============\n"
foreach key [lsort [array names p]] {
    puts "$key : $p($key)"
}
puts "\n----------------------\n"
puts "Total Entries : [array size p]"


 















