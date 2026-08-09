if {0} {
Create a Tcl dictionary named employee containing:

name       → Ravi
id         → 101
age        → 22
department → ASIC
salary     → 50000

Then:

Display the original dictionary.
Use dict unset to remove the age key.
Remove the salary key.
Display the final dictionary.
Print the number of remaining entries using dict size
}

set employee [dict create \
name        Ravi \
id          101 \
age         22 \
department  VLSI \
salary      50000
]

puts "\n Original Employee dictionary : \n $employee \n"
dict unset employee age
dict unset employee salary

puts "After removing age and salary : \n"

puts $employee

puts "Total entries : [dict size $employee]"





















