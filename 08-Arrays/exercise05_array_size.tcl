if {0} {
Create the following array:

Key	Value
name	PrimeTime
company	Synopsys
version	R2025.06
license	Active

Display:

All key-value pairs
Total number of entries
}

array set p {
    name	PrimeTime
    company	Synopsys
    version	R2025.06
    license	Active
}

puts "==========EDA Tool Information================\n"
foreach key [lsort [array names p]] {
    puts "$key : $p($key)"
}
puts "------------------------------------------"
puts "Total number of entries : [array size p]"

 












