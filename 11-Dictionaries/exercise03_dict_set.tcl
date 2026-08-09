if {0} {
Create a Tcl dictionary named employee with:

name       → Ravi
id         → 101
age        → 22
department → VLSI

Then use dict set to:

Add a new key salary with value 50000
Add a new key experience with value 2
Update department from VLSI to ASIC
Print the final dictionary.
}


set employee [dict create \
name        Ravi \
id          101 \
age         22 \
department  VLSI \
]

puts "=============Employee dictionary==================="
dict set employee salary 50000
dict set employee experience 2
dict set employee department ASIC
puts $employee
































