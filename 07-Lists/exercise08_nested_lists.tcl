if {0} {
Create the following nested list.
| Tool      | Company  |
| --------- | -------- |
| PrimeTime | Synopsys |
| ICC2      | Synopsys |
| Innovus   | Cadence  |
| Genus     | Cadence  |
Display:

First Tool
First Company
Third Tool
Fourth Company
}

set a {
    {PrimeTime Synopsys}
    {ICC2 Synopsys}
    {Innovus Cadence}
    {Genus Cadence}
}

puts "First tool        : [lindex [lindex $a 0] 0] "
puts "First company     : [lindex [lindex $a 0] 1] "
puts "Third tool        : [lindex [lindex $a 2] 0] "
puts "Fourth Company    : [lindex [lindex $a 3] 1] "



