if {0} {
Create the following array.

Key	Value
name	PrimeTime
company	Synopsys
version	R2024.03

Perform the following:

Display all values
Update version to R2025.06
Add a new key:
license → Active

Display the updated array.
}

 
set p(name) "PrimeTime"
set p(company) "Synopsys"
set p(version) "R2024.03"

puts "=================Original Tool information=================\n"
puts "Name      : $p(name)"
puts "Company   : $p(company)"
puts "Version   : $p(version) \n"
 
set p(version) "R2025.06"
set p(license) "Active"


puts "===================Updated Tool Information=================\n "
puts "Name      : $p(name)"
puts "Company   : $p(company)"
puts "Version   : $p(version)"
puts "License   : $p(license)"














