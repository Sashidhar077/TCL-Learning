if {0} {
Create an array to store the following information about an EDA tool:

Key	Value
name	PrimeTime
company	Synopsys
version	R2024.03
license	Active

Display all values.
}
 
set p(name) PrimeTime
set p(company) Synopsys
set p(version) R2024.03
set p(license) Active

puts "=========EDA Tool Information======================="

puts "Name    : $p(name)"
puts "Company : $p(company)"
puts "Version : $p(version)"
puts "License : $p(license)"
