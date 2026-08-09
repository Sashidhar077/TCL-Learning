if {0} {
Create a Tcl dictionary named employee containing:

name       → Ravi
id         → 101
age        → 22
department → ASIC
salary     → 50000

Then:

Use dict keys to display all the keys.
Use dict values to display all the values.
Print each key-value pair using dict for.
}


set employee [dict create \
name        Ravi \
id          101 \
age         22 \
department  VLSI \
salary      50000
]

puts "\n Keys : \n [dict keys $employee] \n"
puts "\n Values : \n [dict values $employee] \n" 

puts ""
dict for {k v} $employee {
    puts "$k : $v"
}


























