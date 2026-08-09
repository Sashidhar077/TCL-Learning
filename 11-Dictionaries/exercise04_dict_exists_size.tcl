if {0} {
Create a Tcl dictionary named employee containing:

name       → Ravi
id         → 101
age        → 22
department → ASIC
salary     → 50000

Then:

Use dict exists to check whether the key salary exists.
Use dict exists to check whether the key experience exists.
Use dict size to find the total number of key-value pairs.
Print appropriate messages.
}

set employee [dict create \
name        Ravi \
id          101 \
age         22 \
department  VLSI \
salary      50000
]

if {[dict exists $employee salary]} {
    puts "Salary key exits......"
} else {
    puts "Salary key does not exist."
}


if {[dict exists $employee experience]} {
    puts "Experience key exists."
} else {
    puts "Experience key does not exist."
}

puts "Total number of entries : [dict size $employee]"




















