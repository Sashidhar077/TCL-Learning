if {0} {
Create the following array using array set.

Key	Value
name	Innovus
company	Cadence
version	23.1
license	Active

Display all information.
}

array set p {
    name Innovus
    company Cadence
    version 23.1
    license Active
}

puts "===========EDA Tool Information============================\n"
puts "Name      : $p(name)"
puts "Compnay   : $p(company)"
puts "Version   : $p(version)"
puts "License   : $p(license)"















