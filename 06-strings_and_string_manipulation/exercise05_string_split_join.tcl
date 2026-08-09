if {0} {
Given the string:

PrimeTime,Innovus,VCS,ICC2

Perform the following:

Split the string into a list.
Print each tool name separately.
Join the list using " | ".
} 

set p "PrimeTime,Innovus,VCS,ICC2"
set q [split $p ","]

puts "Tool1 : [lindex $q 0] "
puts "Tool2 : [lindex $q 1]  "
puts "Tool3 : [lindex $q 2] "
puts "Tool4 : [lindex $q 3] "
puts ""
set r [join $q " | "]
puts "Joined String : $r"